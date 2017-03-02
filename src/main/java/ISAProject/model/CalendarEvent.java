package ISAProject.model;

import ISAProject.model.users.User;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Verpychoff on 2/16/2017.
 */

@Entity
@Table(name = "calendarevent")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class CalendarEvent {

    @Id
    @GeneratedValue
    @Column(name = "ceid")
    private long id;

    @Version
    private int version;

//    @Temporal(TemporalType.TIMESTAMP)
//    @Column(name = "ceStart")
//    private Date start;
//
//    @Temporal(TemporalType.TIMESTAMP)
//    @Column(name = "ceEnd")
//    private Date end;

    @Column(name = "ceyear")
    private int year;

    @Column(name = "cemonth")
    private int month;

    @Column(name = "ceday")
    private int day;

    @Column(name = "cestarthour")
    private int startHour;

    @Column(name = "cestartminute")
    private int startMinute;

    @Column(name = "ceendhour")
    private int endHour;

    @Column(name = "ceendminute")
    private int endMinute;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "userid", referencedColumnName = "id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "trid", referencedColumnName = "trid")
    private TableRegion tableRegion;

    public Long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public int getStartHour() {
        return startHour;
    }

    public void setStartHour(int startHour) {
        this.startHour = startHour;
    }

    public int getStartMinute() {
        return startMinute;
    }

    public void setStartMinute(int startMinute) {
        this.startMinute = startMinute;
    }

    public int getEndHour() {
        return endHour;
    }

    public void setEndHour(int endHour) {
        this.endHour = endHour;
    }

    public int getEndMinute() {
        return endMinute;
    }

    public void setEndMinute(int endMinute) {
        this.endMinute = endMinute;
    }

    //    public Date getStart() {
//        return start;
//    }
//
//    public void setStart(Date start) {
//        this.start = start;
//    }
//
//    public Date getEnd() {
//        return end;
//    }
//
//    public void setEnd(Date end) {
//        this.end = end;
//    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TableRegion getTableRegion() {
        return tableRegion;
    }

    public void setTableRegion(TableRegion tableRegion) {
        this.tableRegion = tableRegion;
    }
}
