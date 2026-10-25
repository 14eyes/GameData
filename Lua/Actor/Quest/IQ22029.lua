require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22029 = class("Quest22029", QuestActorProxy)
Quest22029.defaultAlias = "Quest22029"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202901"] = self.OnSubStart2202901,
        ["2202904"] = self.OnSubStart2202904,
        ["2202902"] = self.OnSubStart2202902,
        ["2202903"] = self.OnSubStart2202903
    }
end

function Quest22029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202901"] = self.OnSubFinish2202901,
        ["2202904"] = self.OnSubFinish2202904,
        ["2202902"] = self.OnSubFinish2202902,
        ["2202903"] = self.OnSubFinish2202903
    }
end

function Quest22029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202901"] = self.OnSubFailed2202901,
        ["2202904"] = self.OnSubFailed2202904,
        ["2202902"] = self.OnSubFailed2202902,
        ["2202903"] = self.OnSubFailed2202903
    }
end

function Quest22029:Start()
    print("Start")
end

function Quest22029:OnDestroy()
    print("OnDestroy")
end

function Quest22029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3060Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3060Data.alias, 0, true)
end

function Quest22029:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22029:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22029:OnSubStart2202901(arg1)
    print("OnSubStart2202901")
    self:NpcCreate(arg1, npcs.Npc3060Data.id, 1)
end

function Quest22029:OnSubFinish2202901(arg1)
    print("OnSubFinish2202901")
end

function Quest22029:OnSubFailed2202901(arg1)
    print("OnSubFailed2202901")
end

function Quest22029:OnSubStart2202904(arg1)
    print("OnSubStart2202904")
end

function Quest22029:OnSubFinish2202904(arg1)
    print("OnSubFinish2202904")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
    self:CallDelay(4, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.battle_start_kaiche, nil, 22029)
        arg1:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    end)
end

function Quest22029:OnSubFailed2202904(arg1)
    print("OnSubFailed2202904")
end

function Quest22029:OnSubStart2202902(arg1)
    print("OnSubStart2202902")
end

function Quest22029:OnSubFinish2202902(arg1)
    print("OnSubFinish2202902")
end

function Quest22029:OnSubFailed2202902(arg1)
    print("OnSubFailed2202902")
end

function Quest22029:OnSubStart2202903(arg1)
    print("OnSubStart2202903")
    self:ShowBlackScreen(0.4, 0.8, 0.4, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3060Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc3060Data.alias)
    end, nil, nil, "")
end

function Quest22029:OnSubFinish2202903(arg1)
    print("OnSubFinish2202903")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
end

function Quest22029:OnSubFailed2202903(arg1)
    print("OnSubFailed2202903")
end

return Quest22029
