package mak.parts.partssupply.service.supply.interfaces;

import mak.parts.partssupply.model.Supplier;
import mak.parts.partssupply.model.Supply;

import java.time.LocalDate;
import java.util.List;

public interface ISupplyService {
    Supply create(Supply supply);
    Supply get(String id);
    Supply update(Supply supply);
    void delete(String id);
    List<Supply> getAll();

    double getTotalIncome();
    double getIncomeOfDate(LocalDate date);
    double getIncomeBetween(LocalDate startDate, LocalDate endDate);
}
