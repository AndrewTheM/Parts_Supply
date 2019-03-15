package mak.parts.partssupply.service.part.impls;

import mak.parts.partssupply.model.Part;
import mak.parts.partssupply.repository.PartRepository;
import mak.parts.partssupply.service.part.interfaces.IPartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class PartServiceMongoImpl implements IPartService {

    @Autowired
    PartRepository repository;

    @PostConstruct
    private void init() {
        List<Part> parts = new ArrayList<>(
                Arrays.asList(
                    new Part("25567", "Bolt", "Instruments", 25.75, "Obichniy bolt")
                )
        );
        repository.saveAll(parts);
    }

    @Override
    public Part create(Part part) {
        return repository.save(part);
    }

    @Override
    public Part get(String id) {
        return repository.findById(id).orElse(null);
    }

    @Override
    public Part update(Part part) {
        return repository.save(part);
    }

    @Override
    public void delete(String id) {
        repository.deleteById(id);
    }

    @Override
    public List<Part> getAll() {
        return repository.findAll();
    }

    @Override
    public Part getAt(int index) {
        return this.getAll().get(index);
    }
}
