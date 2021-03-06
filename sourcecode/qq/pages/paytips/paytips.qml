<view class="content">
  <image class="pay-icon" qq:if="{{params.code == '9000'}}" mode="widthFix" src="{{default_round_success_icon}}" />
  <image class="pay-icon" qq:else mode="widthFix" src="{{default_round_error_icon}}" />
  <text class="dis-block">{{params.msg}}</text>
  <view qq:if="{{params.code == '9000'}}" class="price-box">
    <text  class="sales-price">{{price_symbol}}{{params.total_price}}</text>
    <text class="price-unit cr-888">ε</text>
  </view>
</view>

<view class="btn-box">
  <button class="my-btn-default dy-wib" type="default" hover-class="none" size="mini" bindtap="back_event">θΏε</button>
  <navigator qq:if="{{(params.page || null) != null && (params.title || null) != null}}" class="dy-wib" url="/pages/{{params.page}}/{{params.page}}" open-type="redirect">
    <button class="my-btn-default" type="default" hover-class="none" size="mini">{{params.title}}</button>
  </navigator>
</view>