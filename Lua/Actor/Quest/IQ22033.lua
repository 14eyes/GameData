require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22033 = class("Quest22033", QuestActorProxy)
Quest22033.defaultAlias = "Quest22033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203301"] = self.OnSubStart2203301,
        ["2203307"] = self.OnSubStart2203307,
        ["2203302"] = self.OnSubStart2203302,
        ["2203303"] = self.OnSubStart2203303,
        ["2203305"] = self.OnSubStart2203305,
        ["2203306"] = self.OnSubStart2203306,
        ["2203304"] = self.OnSubStart2203304
    }
end

function Quest22033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203301"] = self.OnSubFinish2203301,
        ["2203307"] = self.OnSubFinish2203307,
        ["2203302"] = self.OnSubFinish2203302,
        ["2203303"] = self.OnSubFinish2203303,
        ["2203305"] = self.OnSubFinish2203305,
        ["2203306"] = self.OnSubFinish2203306,
        ["2203304"] = self.OnSubFinish2203304
    }
end

function Quest22033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203301"] = self.OnSubFailed2203301,
        ["2203307"] = self.OnSubFailed2203307,
        ["2203302"] = self.OnSubFailed2203302,
        ["2203303"] = self.OnSubFailed2203303,
        ["2203305"] = self.OnSubFailed2203305,
        ["2203306"] = self.OnSubFailed2203306,
        ["2203304"] = self.OnSubFailed2203304
    }
end

function Quest22033:Start()
    print("Start")
end

function Quest22033:OnDestroy()
    print("OnDestroy")
end

function Quest22033:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
    end, nil, nil, "", false, true)
end

function Quest22033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22033:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3022Data.alias, 3)
end

function Quest22033:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22033:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest22033:OnSubStart2203301(arg1)
    print("OnSubStart2203301")
    self:CreateQuestNpc(arg1, npcs.Npc3022Data.id, 1)
end

function Quest22033:OnSubFinish2203301(arg1)
    print("OnSubFinish2203301")
end

function Quest22033:OnSubFailed2203301(arg1)
    print("OnSubFailed2203301")
end

function Quest22033:OnSubStart2203307(arg1)
    print("OnSubStart2203307")
    self:ShowBlackScreen(0.4, 0.8, 0.4, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.PaimonData.id, 1)
        arg1_2:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "")
end

function Quest22033:OnSubFinish2203307(arg1)
    print("OnSubFinish2203307")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest22033:OnSubFailed2203307(arg1)
    print("OnSubFailed2203307")
end

function Quest22033:OnSubStart2203302(arg1)
    print("OnSubStart2203302")
end

function Quest22033:OnSubFinish2203302(arg1)
    print("OnSubFinish2203302")
end

function Quest22033:OnSubFailed2203302(arg1)
    print("OnSubFailed2203302")
end

function Quest22033:OnSubStart2203303(arg1)
    print("OnSubStart2203303")
end

function Quest22033:OnSubFinish2203303(arg1)
    print("OnSubFinish2203303")
end

function Quest22033:OnSubFailed2203303(arg1)
    print("OnSubFailed2203303")
end

function Quest22033:OnSubStart2203305(arg1)
    print("OnSubStart2203305")
end

function Quest22033:OnSubFinish2203305(arg1)
    print("OnSubFinish2203305")
end

function Quest22033:OnSubFailed2203305(arg1)
    print("OnSubFailed2203305")
end

function Quest22033:OnSubStart2203306(arg1)
    print("OnSubStart2203306")
end

function Quest22033:OnSubFinish2203306(arg1)
    print("OnSubFinish2203306")
end

function Quest22033:OnSubFailed2203306(arg1)
    print("OnSubFailed2203306")
end

function Quest22033:OnSubStart2203304(arg1)
    print("OnSubStart2203304")
end

function Quest22033:OnSubFinish2203304(arg1)
    print("OnSubFinish2203304")
end

function Quest22033:OnSubFailed2203304(arg1)
    print("OnSubFailed2203304")
end

return Quest22033
