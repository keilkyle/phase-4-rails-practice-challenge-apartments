class LeasesController < ApplicationController
    def index
        leases = Lease.all
        render json: leases
    end

    def create
        lease = Lease.create(lease_params)
        render json: lease, status: :created
    end

    def destroy
        lease = Lease.find_by(id: params[:id])
        lease.destroy
    end

    private

    def lease_params
        params.permit(:apartment_id, :tenant_id, :rent)
    end

end
