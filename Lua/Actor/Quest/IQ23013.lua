require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23013 = class("Quest23013", QuestActorProxy)
Quest23013.defaultAlias = "Quest23013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest23013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest23013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2301301"] = self.OnSubStart2301301,
        ["2301304"] = self.OnSubStart2301304,
        ["2301302"] = self.OnSubStart2301302,
        ["2301303"] = self.OnSubStart2301303
    }
end

function Quest23013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2301301"] = self.OnSubFinish2301301,
        ["2301304"] = self.OnSubFinish2301304,
        ["2301302"] = self.OnSubFinish2301302,
        ["2301303"] = self.OnSubFinish2301303
    }
end

function Quest23013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23013:Start()
    print("Start")
end

function Quest23013:OnDestroy()
    print("OnDestroy")
end

function Quest23013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

function Quest23013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 2301304)
    end
end

function Quest23013:OnSubStart2301301(arg1)
    print("OnSubStart2301301")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
end

function Quest23013:OnSubFinish2301301(arg1)
    print("OnSubFinish2301301")
end

function Quest23013:OnSubStart2301304(arg1)
    print("OnSubStart2301304")
end

function Quest23013:OnSubFinish2301304(arg1)
    print("OnSubFinish2301304")
end

function Quest23013:OnSubStart2301302(arg1)
    print("OnSubStart2301302")
    self:GetQuestNpcActor(npcs.Npc20657Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest23013:OnSubFinish2301302(arg1)
    print("OnSubFinish2301302")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest23013:OnSubStart2301303(arg1)
    print("OnSubStart2301303")
end

function Quest23013:OnSubFinish2301303(arg1)
    print("OnSubFinish2301303")
    self:SafeDestroyQuestNpc(npcs.Npc20657Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20658Data.alias, 3)
end

return Quest23013
