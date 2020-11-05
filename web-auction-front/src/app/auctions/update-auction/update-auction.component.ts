import {Component, OnInit} from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {AuctionService} from '../../services/auction.service';
import {ActivatedRoute, Router} from '@angular/router';

@Component({
  selector: 'app-update-auction',
  templateUrl: './update-auction.component.html',
  styleUrls: ['./update-auction.component.scss']
})
export class UpdateAuctionComponent implements OnInit {
  createForm: FormGroup;
  message = '';
  status = false;
  statusClass = '';
  itemId: number;

  constructor(private fb: FormBuilder, private auctionService: AuctionService,
              private activatedRoute: ActivatedRoute, private router: Router) {
    this.fillForm('', '', '', '');
  }

  ngOnInit(): void {

    this.activatedRoute.params.subscribe(res => this.itemId = res.id);
    this.auctionService.getById(this.itemId).subscribe(res => {
      this.fillForm(res.item.name, res.item.description, res.item.auction_end.split(' ')[0], res.item.image_url);
    }, error => {
      this.fillForm('', '', '', '');
    });

  }

  private fillForm(name, description, auctionEnd, imageUrl): void {
    this.createForm = this.fb.group({
      name: [name, [Validators.required]],
      description: [description, [Validators.required]],
      auction_end: [auctionEnd, Validators.required],
      image_url: [imageUrl, [Validators.required, Validators.pattern('(https?://)?([\\da-z.-]+)\\.([a-z.]{2,6})[/\\w .-]*/?')]],

    });
  }

  updateProduct(form: any): void {
    const {name, description, auction_end, image_url} = form;
    console.log(form);
    this.auctionService.updateItem({itemId: this.itemId, name, description, auction_end, image_url})
      .subscribe(res => {
          this.status = true;
          this.message = 'This auction Item was saved successfully';
          this.statusClass = 'alert alert-success mt-2';
          this.createForm.reset();
          setTimeout(() => {
            this.router.navigate(['admin']);
          }, 1500);
        },
        error => {
          this.status = true;
          this.message = 'Something went wrong check server connection';
          this.statusClass = 'alert alert-danger mt-2';
        });

  }
}
