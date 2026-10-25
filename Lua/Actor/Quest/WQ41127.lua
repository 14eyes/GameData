require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41127 = class("Quest41127", QuestActorProxy)
Quest41127.defaultAlias = "Quest41127"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest41127:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest41127:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4112701"] = self.OnSubStart4112701,
        ["4112702"] = self.OnSubStart4112702,
        ["4112714"] = self.OnSubStart4112714,
        ["4112715"] = self.OnSubStart4112715,
        ["4112706"] = self.OnSubStart4112706,
        ["4112705"] = self.OnSubStart4112705,
        ["4112704"] = self.OnSubStart4112704,
        ["4112703"] = self.OnSubStart4112703,
        ["4112707"] = self.OnSubStart4112707,
        ["4112708"] = self.OnSubStart4112708,
        ["4112709"] = self.OnSubStart4112709,
        ["4112713"] = self.OnSubStart4112713,
        ["4112712"] = self.OnSubStart4112712,
        ["4112710"] = self.OnSubStart4112710,
        ["4112711"] = self.OnSubStart4112711
    }
end

function Quest41127:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4112701"] = self.OnSubFinish4112701,
        ["4112702"] = self.OnSubFinish4112702,
        ["4112714"] = self.OnSubFinish4112714,
        ["4112715"] = self.OnSubFinish4112715,
        ["4112706"] = self.OnSubFinish4112706,
        ["4112705"] = self.OnSubFinish4112705,
        ["4112704"] = self.OnSubFinish4112704,
        ["4112703"] = self.OnSubFinish4112703,
        ["4112707"] = self.OnSubFinish4112707,
        ["4112708"] = self.OnSubFinish4112708,
        ["4112709"] = self.OnSubFinish4112709,
        ["4112713"] = self.OnSubFinish4112713,
        ["4112712"] = self.OnSubFinish4112712,
        ["4112710"] = self.OnSubFinish4112710,
        ["4112711"] = self.OnSubFinish4112711
    }
end

function Quest41127:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4112701"] = self.OnSubFailed4112701,
        ["4112702"] = self.OnSubFailed4112702,
        ["4112714"] = self.OnSubFailed4112714,
        ["4112715"] = self.OnSubFailed4112715,
        ["4112706"] = self.OnSubFailed4112706,
        ["4112705"] = self.OnSubFailed4112705,
        ["4112704"] = self.OnSubFailed4112704,
        ["4112703"] = self.OnSubFailed4112703,
        ["4112707"] = self.OnSubFailed4112707,
        ["4112708"] = self.OnSubFailed4112708,
        ["4112709"] = self.OnSubFailed4112709,
        ["4112713"] = self.OnSubFailed4112713,
        ["4112712"] = self.OnSubFailed4112712,
        ["4112710"] = self.OnSubFailed4112710,
        ["4112711"] = self.OnSubFailed4112711
    }
end

function Quest41127:Start()
    print("Start")
end

function Quest41127:OnDestroy()
    print("OnDestroy")
end

function Quest41127:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41127:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41127:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1517", 0, true)
    self:UnSpawn(gadgets.Gadget70710212Data.alias)
    self:UnSpawn(gadgets.Gadget70710213Data.alias)
    self:UnSpawn(gadgets.Gadget70710214Data.alias)
end

function Quest41127:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:SetQuestVar(4112711, 1, 1)
        local questVar = self:GetQuestVar(4112711, 2)
        local v = self:GetQuestVar(4112711, 3)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112711, 4, 1)
        end
    elseif arg1 == 2 then
        self:SetQuestVar(4112711, 2, 1)
        local questVar = self:GetQuestVar(4112711, 1)
        local v = self:GetQuestVar(4112711, 3)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112711, 4, 1)
        end
    elseif arg1 == 3 then
        self:SetQuestVar(4112711, 3, 1)
        local questVar = self:GetQuestVar(4112711, 1)
        local v = self:GetQuestVar(4112711, 2)
        if questVar == 1 and v == 1 then
            self:SetQuestVar(4112711, 4, 1)
        end
    elseif arg1 == 4 then
        self:SetQuestVar(4112711, 4, 1)
    end
end

function Quest41127:destroynpc()
    print("destroynpc")
    self:DestroyQuestNpcActor(npcs.Npc151701Data.alias, 1008)
    self:NotifyTo("Npc1517", 0, true)
end

function Quest41127:OnSubStart4112701(arg1)
    print("OnSubStart4112701")
end

function Quest41127:OnSubFinish4112701(arg1)
    print("OnSubFinish4112701")
end

function Quest41127:OnSubFailed4112701(arg1)
    print("OnSubFailed4112701")
end

function Quest41127:OnSubStart4112702(arg1)
    print("OnSubStart4112702")
    self:NotifyTo("Npc1517", 1, true)
    self:UnSpawn(gadgets.Gadget70710212Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710212Data.id, 1, 0)
    self:CreateQuestNpc(arg1, npcs.Npc151701Data.id, 1)
end

function Quest41127:OnSubFinish4112702(arg1)
    print("OnSubFinish4112702")
end

function Quest41127:OnSubFailed4112702(arg1)
    print("OnSubFailed4112702")
end

function Quest41127:OnSubStart4112714(arg1)
    print("OnSubStart4112714")
end

function Quest41127:OnSubFinish4112714(arg1)
    print("OnSubFinish4112714")
    self:SetQuestVar(4112714, 1, 1)
end

function Quest41127:OnSubFailed4112714(arg1)
    print("OnSubFailed4112714")
end

function Quest41127:OnSubStart4112715(arg1)
    print("OnSubStart4112715")
end

function Quest41127:OnSubFinish4112715(arg1)
    print("OnSubFinish4112715")
end

function Quest41127:OnSubFailed4112715(arg1)
    print("OnSubFailed4112715")
end

function Quest41127:OnSubStart4112706(arg1)
    print("OnSubStart4112706")
end

function Quest41127:OnSubFinish4112706(arg1)
    print("OnSubFinish4112706")
end

function Quest41127:OnSubFailed4112706(arg1)
    print("OnSubFailed4112706")
end

function Quest41127:OnSubStart4112705(arg1)
    print("OnSubStart4112705")
end

function Quest41127:OnSubFinish4112705(arg1)
    print("OnSubFinish4112705")
end

function Quest41127:OnSubFailed4112705(arg1)
    print("OnSubFailed4112705")
end

function Quest41127:OnSubStart4112704(arg1)
    print("OnSubStart4112704")
    actorMgr:CreateActorWithPos(datas.Q41127Trigger2_.alias, datas.Q41127Trigger2_.script, datas.Q41127Trigger2_.id, 0, datas.Q41127Trigger2_.point.pos, datas.Q41127Trigger2_.point.rot, true, false, 3)
end

function Quest41127:OnSubFinish4112704(arg1)
    self:NarratorOnlyTask({{dialogID = 411271502, duration = 3}})
end

function Quest41127:OnSubFailed4112704(arg1)
    print("OnSubFailed4112704")
end

function Quest41127:OnSubStart4112703(arg1)
    print("OnSubStart4112703")
end

function Quest41127:OnSubFinish4112703(arg1)
    self:NarratorOnlyTask({{dialogID = 411271503, duration = 3}, {dialogID = 411271504, duration = 3}})
end

function Quest41127:OnSubFailed4112703(arg1)
    print("OnSubFailed4112703")
end

function Quest41127:OnSubStart4112707(arg1)
    print("OnSubStart4112707")
end

function Quest41127:OnSubFinish4112707(arg1)
    self:NarratorOnlyTask({{dialogID = 411271503, duration = 3}, {dialogID = 411271504, duration = 3}})
end

function Quest41127:OnSubFailed4112707(arg1)
    print("OnSubFailed4112707")
end

function Quest41127:OnSubStart4112708(arg1)
    print("OnSubStart4112708")
    actorMgr:CreateActorWithPos(datas.Q41127Trigger1_.alias, datas.Q41127Trigger1_.script, datas.Q41127Trigger1_.id, 0, datas.Q41127Trigger1_.point.pos, datas.Q41127Trigger1_.point.rot, true, false, 3)
end

function Quest41127:OnSubFinish4112708(arg1)
    self:NarratorOnlyTask({{dialogID = 411271501, duration = 3}, {dialogID = 411271502, duration = 3}})
end

function Quest41127:OnSubFailed4112708(arg1)
    print("OnSubFailed4112708")
end

function Quest41127:OnSubStart4112709(arg1)
    print("OnSubStart4112709")
    self:FinishQuestID(true, 4112707)
    self:FinishQuestID(true, 4112703)
end

function Quest41127:OnSubFinish4112709(arg1)
    self:NarratorOnlyTask({{dialogID = 411271503, duration = 3}, {dialogID = 411271504, duration = 3}})
end

function Quest41127:OnSubFailed4112709(arg1)
    print("OnSubFailed4112709")
end

function Quest41127:OnSubStart4112713(arg1)
    print("OnSubStart4112713")
    self:NotifyTo("Npc1517", 1, true)
    self:UnSpawn(gadgets.Gadget70710213Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710213Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710214Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710214Data.id, 2, 0)
end

function Quest41127:OnSubFinish4112713(arg1)
    self:NarratorOnlyTask({{dialogID = 411271505, duration = 3}, {dialogID = 411271506, duration = 3}})
end

function Quest41127:OnSubFailed4112713(arg1)
    print("OnSubFailed4112713")
end

function Quest41127:OnSubStart4112712(arg1)
    print("OnSubStart4112712")
end

function Quest41127:OnSubFinish4112712(arg1)
    print("OnSubFinish4112712")
end

function Quest41127:OnSubFailed4112712(arg1)
    print("OnSubFailed4112712")
end

function Quest41127:OnSubStart4112710(arg1)
    print("OnSubStart4112710")
end

function Quest41127:OnSubFinish4112710(arg1)
    self:NarratorOnlyTask({{dialogID = 411271503, duration = 3}, {dialogID = 411271504, duration = 3}})
end

function Quest41127:OnSubFailed4112710(arg1)
    print("OnSubFailed4112710")
end

function Quest41127:OnSubStart4112711(arg1)
    print("OnSubStart4112711")
    self:FinishQuestID(true, 4112710)
    self:FinishQuestID(true, 4112712)
    self:SetQuestVar(4112711, 2, 0)
    self:SetQuestVar(4112711, 3, 0)
    self:UnSpawn(gadgets.Gadget70710212Data.alias)
    self:UnSpawn(gadgets.Gadget70710213Data.alias)
    self:UnSpawn(gadgets.Gadget70710214Data.alias)
end

function Quest41127:OnSubFinish4112711(arg1)
    print("OnSubFinish4112711")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroynpc, nil, nil, "")
end

function Quest41127:OnSubFailed4112711(arg1)
    print("OnSubFailed4112711")
end

return Quest41127
