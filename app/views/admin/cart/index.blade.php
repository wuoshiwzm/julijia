@section('content')
<table>
   	<thead>
       	<tr>
           	<th>Product</th>
           	<th>Qty</th>
           	<th>Item Price</th>
           	<th>Subtotal</th>
           	<th>rowId</th>
           	<th>Delete</th>

       	</tr>
   	</thead>

   	<tbody>
   	<?php foreach($cart as $row) :?>
      <?php //dd($row->options); ?>

       	<tr>
           	<td>
               	<p><strong><?php echo $row->name;?></strong></p>
               	<p><?php echo $row->options;?></p>
           	</td>
           	<td><input type="text" value="<?php echo $row->qty;?>"></td>
           	<td>$<?php echo $row->price;?></td>
           	<td>$<?php echo $row->subtotal;?></td>
            <td><?php echo $row->rowid;?></td>
            <td><a href="{{url('user/cart/deleteItem/'.$row->rowid)}}">delete</a> </td>
       </tr>

   	<?php endforeach;?>

   	</tbody>
</table>
@stop
