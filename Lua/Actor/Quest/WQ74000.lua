require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74000 = class("Quest74000", QuestActorProxy)
Quest74000.defaultAlias = "Quest74000"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74000:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400001"] = self.OnSubStart7400001,
        ["7400021"] = self.OnSubStart7400021,
        ["7400002"] = self.OnSubStart7400002,
        ["7400005"] = self.OnSubStart7400005,
        ["7400020"] = self.OnSubStart7400020,
        ["7400006"] = self.OnSubStart7400006,
        ["7400007"] = self.OnSubStart7400007,
        ["7400017"] = self.OnSubStart7400017,
        ["7400008"] = self.OnSubStart7400008,
        ["7400009"] = self.OnSubStart7400009,
        ["7400011"] = self.OnSubStart7400011,
        ["7400019"] = self.OnSubStart7400019,
        ["7400013"] = self.OnSubStart7400013,
        ["7400004"] = self.OnSubStart7400004,
        ["7400012"] = self.OnSubStart7400012,
        ["7400015"] = self.OnSubStart7400015,
        ["7400016"] = self.OnSubStart7400016,
        ["7400018"] = self.OnSubStart7400018,
        ["7400003"] = self.OnSubStart7400003,
        ["7400010"] = self.OnSubStart7400010,
        ["7400014"] = self.OnSubStart7400014
    }
end

function Quest74000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400001"] = self.OnSubFinish7400001,
        ["7400021"] = self.OnSubFinish7400021,
        ["7400002"] = self.OnSubFinish7400002,
        ["7400005"] = self.OnSubFinish7400005,
        ["7400020"] = self.OnSubFinish7400020,
        ["7400006"] = self.OnSubFinish7400006,
        ["7400007"] = self.OnSubFinish7400007,
        ["7400017"] = self.OnSubFinish7400017,
        ["7400008"] = self.OnSubFinish7400008,
        ["7400009"] = self.OnSubFinish7400009,
        ["7400011"] = self.OnSubFinish7400011,
        ["7400019"] = self.OnSubFinish7400019,
        ["7400013"] = self.OnSubFinish7400013,
        ["7400004"] = self.OnSubFinish7400004,
        ["7400012"] = self.OnSubFinish7400012,
        ["7400015"] = self.OnSubFinish7400015,
        ["7400016"] = self.OnSubFinish7400016,
        ["7400018"] = self.OnSubFinish7400018,
        ["7400003"] = self.OnSubFinish7400003,
        ["7400010"] = self.OnSubFinish7400010,
        ["7400014"] = self.OnSubFinish7400014
    }
end

function Quest74000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7400001"] = self.OnSubFailed7400001, ["7400004"] = self.OnSubFailed7400004}
end

function Quest74000:Start()
    print("Start")
end

function Quest74000:OnDestroy()
    print("OnDestroy")
end

function Quest74000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74000:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74000:OnSubStart7400001(arg1)
    print("OnSubStart7400001")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):ClearNpcRunAwayTask()
end

function Quest74000:OnSubFinish7400001(arg1)
    print("OnSubFinish7400001")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7400001)
end

function Quest74000:OnSubFailed7400001(arg1)
    print("OnSubFailed7400001")
    this:SafeDestroyQuestNpc(npcs.Npc21033Data.alias, 3)
end

function Quest74000:OnSubStart7400021(arg1)
    print("OnSubStart7400021")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    actorUtils.FinishQuestID(false, 7400021)
end

function Quest74000:OnSubFinish7400021(arg1)
    print("OnSubFinish7400021")
end

function Quest74000:OnSubStart7400002(arg1)
    print("OnSubStart7400002")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
end

function Quest74000:OnSubFinish7400002(arg1)
    print("OnSubFinish7400002")
end

function Quest74000:OnSubStart7400005(arg1)
    print("OnSubStart7400005")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):ClearNpcRunAwayTask()
end

function Quest74000:OnSubFinish7400005(arg1)
    print("OnSubFinish7400005")
end

function Quest74000:OnSubStart7400020(arg1)
    print("OnSubStart7400020")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
end

function Quest74000:OnSubFinish7400020(arg1)
    print("OnSubFinish7400020")
end

function Quest74000:OnSubStart7400006(arg1)
    print("OnSubStart7400006")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):ClearNpcRunAwayTask()
end

function Quest74000:OnSubFinish7400006(arg1)
    print("OnSubFinish7400006")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7400006_7)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21034Data.alias)
end

function Quest74000:OnSubStart7400007(arg1)
    print("OnSubStart7400007")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21034Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):ClearNpcRunAwayTask()
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):ClearNpcRunAwayTask()
end

function Quest74000:OnSubFinish7400007(arg1)
    print("OnSubFinish7400007")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7400006_7)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21034Data.alias)
end

function Quest74000:OnSubStart7400017(arg1)
    print("OnSubStart7400017")
end

function Quest74000:OnSubFinish7400017(arg1)
    print("OnSubFinish7400017")
end

function Quest74000:OnSubStart7400008(arg1)
    print("OnSubStart7400008")
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400008TriggerDog2", "Actor/Gadget/Q7400008TriggerDog2", 70900002, 0, {x = 3985.125, y = 535.013, z = 4941.444}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):NpcRunAwayTask(datas.RoutePointsData_huatian, 5, 0, 1, function(arg1)
        actorMgr:GetActor("74000")
    end)
end

function Quest74000:OnSubFinish7400008(arg1)
    print("OnSubFinish7400008")
    this:GetQuestNpcActor(npcs.Npc20981Data.alias):ClearNpcRunAwayTask()
    if self:GetQuestVar(arg1.QuestConfigId, 1) == 1 then
        if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_1)
        else
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_1)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_1)
                end
            end
        end
    else
        if self:GetQuestVar(arg1.QuestConfigId, 1) == 3 then
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                    end
                end
            end
        else
            if self:GetQuestVar(arg1.QuestConfigId, 1) == 4 then
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                    else
                        if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                            this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                        end
                    end
                end
            end
        end
    end
end

function Quest74000:OnSubStart7400009(arg1)
    print("OnSubStart7400009")
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400009TriggerDog3", "Actor/Gadget/Q7400009TriggerDog3", 70900002, 0, {x = 3984.799, y = 535.025, z = 4939.964}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):NpcRunAwayTask(datas.RoutePointsData_huatian, 3, 0, 1, function(arg1)
        actorMgr:GetActor("74000")
    end)
end

function Quest74000:OnSubFinish7400009(arg1)
    print("OnSubFinish7400009")
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):ClearNpcRunAwayTask()
    if self:GetQuestVar(arg1.QuestConfigId, 1) == 1 then
        if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_1)
        else
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_1)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_1)
                end
            end
        end
    else
        if self:GetQuestVar(arg1.QuestConfigId, 1) == 3 then
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                    end
                end
            end
        else
            if self:GetQuestVar(arg1.QuestConfigId, 1) == 4 then
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                    else
                        if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                            this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                        end
                    end
                end
            end
        end
    end
end

function Quest74000:OnSubStart7400011(arg1)
    print("OnSubStart7400011")
    actorMgr:CreateActorWithPos("Q7400011TriggerDog5", "Actor/Gadget/Q7400011TriggerDog5", 70900002, 0, {x = 3986.62, y = 535.033, z = 4940.129}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74000:OnSubFinish7400011(arg1)
    print("OnSubFinish7400011")
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
    if self:GetQuestVar(arg1.QuestConfigId, 1) == 1 then
        if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
            this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_1)
        else
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_1)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_1)
                end
            end
        end
    else
        if self:GetQuestVar(arg1.QuestConfigId, 1) == 3 then
            if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
            else
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                    end
                end
            end
        else
            if self:GetQuestVar(arg1.QuestConfigId, 1) == 4 then
                if self:GetQuestVar(arg1.QuestConfigId, 3) == 1 then
                    this:NarratorOnlyTaskByData(datas.NarratorWithId7400003_2)
                else
                    if self:GetQuestVar(arg1.QuestConfigId, 3) == 2 then
                        this:NarratorOnlyTaskByData(datas.NarratorWithId7400008_2)
                    else
                        if self:GetQuestVar(arg1.QuestConfigId, 3) == 3 then
                            this:NarratorOnlyTaskByData(datas.NarratorWithId7400009_2)
                        end
                    end
                end
            end
        end
    end
end

function Quest74000:OnSubStart7400019(arg1)
    print("OnSubStart7400019")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
end

function Quest74000:OnSubFinish7400019(arg1)
    print("OnSubFinish7400019")
end

function Quest74000:OnSubStart7400013(arg1)
    print("OnSubStart7400013")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):NpcRunAwayTask(datas.RoutePointsData_halfway, 5, 0, 1, function(arg1)
        actorMgr:GetActor("74000")
    end)
end

function Quest74000:OnSubFinish7400013(arg1)
    print("OnSubFinish7400013")
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):ClearNpcRunAwayTask()
end

function Quest74000:OnSubStart7400004(arg1)
    print("OnSubStart7400004")
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
end

function Quest74000:OnSubFinish7400004(arg1)
    print("OnSubFinish7400004")
end

function Quest74000:OnSubFailed7400004(arg1)
    print("OnSubFailed7400004")
    this:SafeDestroyQuestNpc(npcs.Npc21033Data.alias, 3)
end

function Quest74000:OnSubStart7400012(arg1)
    print("OnSubStart7400012")
end

function Quest74000:OnSubFinish7400012(arg1)
    print("OnSubFinish7400012")
end

function Quest74000:OnSubStart7400015(arg1)
    print("OnSubStart7400015")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
end

function Quest74000:OnSubFinish7400015(arg1)
    print("OnSubFinish7400015")
    this:SafeDestroyQuestNpc(npcs.Npc20973Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20981Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20980Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21033Data.alias, 3)
end

function Quest74000:OnSubStart7400016(arg1)
    print("OnSubStart7400016")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20981Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20980Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc20980Data.alias):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21033Data.id, 0)
end

function Quest74000:OnSubFinish7400016(arg1)
    print("OnSubFinish7400016")
    this:SafeDestroyQuestNpc(npcs.Npc20973Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20981Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20980Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21033Data.alias, 3)
end

function Quest74000:OnSubStart7400018(arg1)
    print("OnSubStart7400018")
end

function Quest74000:OnSubFinish7400018(arg1)
    print("OnSubFinish7400018")
end

function Quest74000:OnSubStart7400003(arg1)
    print("OnSubStart7400003")
end

function Quest74000:OnSubFinish7400003(arg1)
    print("OnSubFinish7400003")
end

function Quest74000:OnSubStart7400010(arg1)
    print("OnSubStart7400010")
end

function Quest74000:OnSubFinish7400010(arg1)
    print("OnSubFinish7400010")
end

function Quest74000:OnSubStart7400014(arg1)
    print("OnSubStart7400014")
    this:CreateQuestNpc(arg1, npcs.Npc20973Data.id, 0)
end

function Quest74000:OnSubFinish7400014(arg1)
    print("OnSubFinish7400014")
    this:GetQuestNpcActor(npcs.Npc20973Data.alias):NpcRunAwayTask(datas.RoutePointsData_2rdhalfway, 5, 0, 1, function(arg1)
        actorMgr:GetActor("74000")
    end)
end

return Quest74000
