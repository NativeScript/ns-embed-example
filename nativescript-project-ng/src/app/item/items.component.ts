import { Component, OnInit } from "@angular/core";

import { Item } from "./item";
import { ItemService } from "./item.service";
import { ImageSymbolEffects } from "@nativescript/core";
import { iosSymbolScaleType } from "@nativescript/core/image-source";

@Component({
  selector: "ns-items",
  templateUrl: "./items.component.html",
})
export class ItemsComponent implements OnInit {
  items: Array<Item>;
  symbolBounceEffect = ImageSymbolEffects.Bounce;
  showImage = false;
  scale: iosSymbolScaleType = "small";
  constructor(private itemService: ItemService) {}

  ngOnInit(): void {
    this.items = this.itemService.getItems();
  }

  toggleImage() {
    if (!this.showImage) {
      this.cycleImage();
    }
    this.showImage = !this.showImage;
    console.log("this.scale:", this.scale);
  }

  cnt = 0;
  cycleImage() {
    this.cnt++;
    switch (this.cnt) {
      case 1:
        this.scale = "small";
        break;
      case 2:
        this.scale = "medium";
        break;
      case 3:
        this.scale = "large";
    }
    if (this.cnt === 3) {
      this.cnt = 0;
    }
  }
}
