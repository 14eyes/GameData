require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20033 = class("Quest20033", QuestActorProxy)
Quest20033.defaultAlias = "Quest20033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2003301"] = self.OnSubStart2003301,
        ["2003302"] = self.OnSubStart2003302,
        ["2003303"] = self.OnSubStart2003303,
        ["2003304"] = self.OnSubStart2003304
    }
end

function Quest20033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2003301"] = self.OnSubFinish2003301,
        ["2003302"] = self.OnSubFinish2003302,
        ["2003303"] = self.OnSubFinish2003303,
        ["2003304"] = self.OnSubFinish2003304
    }
end

function Quest20033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20033:Start()
    print("Start")
end

function Quest20033:OnDestroy()
    print("OnDestroy")
end

function Quest20033:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
end

function Quest20033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1405Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
end

function Quest20033:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20033:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest20033:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest20033:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest20033:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20033:OnSubStart2003301(arg1)
    print("OnSubStart2003301")
    self:NpcCreate(arg1, npcs.Npc1408Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1700Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
end

function Quest20033:OnSubFinish2003301(arg1)
    print("OnSubFinish2003301")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    end)
end

function Quest20033:OnSubStart2003302(arg1)
    print("OnSubStart2003302")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc1700Data.alias, 1, true)
    end)
end

function Quest20033:OnSubFinish2003302(arg1)
    print("OnSubFinish2003302")
end

function Quest20033:OnSubStart2003303(arg1)
    print("OnSubStart2003303")
    self:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20033:OnSubFinish2003303(arg1)
    print("OnSubFinish2003303")
end

function Quest20033:OnSubStart2003304(arg1)
    print("OnSubStart2003304")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc1700Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc1405Data.alias, 1, true)
end

function Quest20033:OnSubFinish2003304(arg1)
    print("OnSubFinish2003304")
    self:NpcDestroy(npcs.Npc1408Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1700Data.alias)
end

return Quest20033
