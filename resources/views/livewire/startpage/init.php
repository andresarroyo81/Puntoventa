<div class="row sales layout-top-spacing">
    <div class="col-sm-12">
        <div class="widget widget-chart-one">
            <div class="widget-heading">
                <h4 class="card-title">
                    <b>{{ $componentName }} | {{ $pageTitle }}</b>
                </h4>
                <ul class="tabs tab-pills">
                    <li>
                        <a href="javascript:void(0)" class="tabmenu bg-dark" data-toggle="modal"
                            data-target="#theModal">Agregar</a>
                    </li>
                </ul>
            </div>
            @include('common.searchbox')
            <div class="widget-content">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="text-white" style="background: #3B3F5C">
                            <tr>
                                <th class="table-th text-white">DESCRIPCION</th>
                                <th class="table-th text-white text-center">IMAGEN</th>
                                <th class="table-th text-white text-center">ACCIONES</th>
                            </tr>
                        </thead>

                        <tbody>
                            <tr>
                                <td><h6>Category Name</h6></td>
                                <td class="text-center">
                                    <span>
                                        <img src="" alt="imagen de ejemplo" height="70" width="80" class="rounded">
                                    </span>
                                </td>
                                <td class="text-center">
                                    <a href="javascript:void(0)" class="btn btn-dark mtmobile" title="Edit">
                                        <i class="fas fa-edit"></i>
                                    </a>

                                    <a href="javascript:void(0)" class="btn btn-dark" title="Delete">
                                        <i class="fas fa-trash"></i>
                                    </a>

                                </td>
                            </tr>
                        </tbody>
                    </table>
                    Pagination
                </div>
            </div>
        </div>
    </div>
    Include form
</div>

<script>
    document.addEventListener('DOMContentLoaded', function(){

    });
</script>

