<div class="connect-sorting">
    <div class="connect-sorting-content">
        <div class="card simple-title-task ui-sortable-handle">
            <div class="card-body">

                @if($total > 0)

                <div class="table-respnsive tblscroll" style="max-height: 650px; overflow: hidden">
                    <table class="table table-bordered table-striped mt-1">
                        <thead class="text-white" style="background: #3B3F5C">
                            <tr>

                                <th class="table-th text-left text-white">DESCRIPCIÓN</th>
                                <th class="table-th text-center text-white">PRECIO</th>
                                <th width="13%" class="table-th text-center text-white">CANTIDAD</th>
                                <th class="table-th text-center text-white">IMPORTE</th>
                                <th class="table-th text-center text-white">ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($cart as $item)
                                <tr>
                                    
                                    <td>
                                        <h6>{{ $item->name }}</h6>
                                    </td>
                                    <td class="text-center">${{ number_format($item->price, 2) }}</td>
                                    <td>
                                        <input type="number" id="r{{ $item->id }}"
                                            wire:change="updateQty({{ $item->id }}, $('#r' + {{ $item->id }}).val() )"
                                            style="font-size: 1rem!important"
                                            class="form-control text-center"
                                            value="{{$item->quantity}}"
                                            >
                                    </td>
                                    <td class="text-center">
                                        <h6>
                                            {{number_format($item->price * $item->quantity,2)}}
                                        </h6>
                                    </td>
                                    <td class="text-center">
                                        <button onclick="Confirm('{{$item->id}}', 'removeItem', '¿CONFIRMAS ELIMINAR EL REGISTRO?')" class="btn btn-dark mbmobile">
                                            <i class="fa fa-trash-alt"></i>
                                        </button>
                                        <button wire:click.prevent="decreaseQty({{$item->id}})" class="btn btn-dark mbmobile">
                                            <i class="fa fa-minus"></i>
                                        </button>
                                        <button wire:click.prevent="increaseQty({{$item->id}})" class="btn btn-dark mbmobile">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                @else
                <h5 class="text-center text-muted">Agrega productos a la venta</h5>
                @endif

                <div wire:loading.inline wire:target="saveSale">
                    <h4 class="text-danger text-center">Guardando Venta...</h4>
                </div>

            </div>
        </div>
    </div>
</div>
