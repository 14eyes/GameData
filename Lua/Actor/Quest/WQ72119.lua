require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72119 = class("Quest72119", QuestActorProxy)
Quest72119.defaultAlias = "Quest72119"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72119:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72119:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211901"] = self.OnSubStart7211901,
        ["7211902"] = self.OnSubStart7211902,
        ["7211903"] = self.OnSubStart7211903,
        ["7211904"] = self.OnSubStart7211904
    }
end

function Quest72119:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211901"] = self.OnSubFinish7211901,
        ["7211902"] = self.OnSubFinish7211902,
        ["7211903"] = self.OnSubFinish7211903,
        ["7211904"] = self.OnSubFinish7211904
    }
end

function Quest72119:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211901"] = self.OnSubFailed7211901,
        ["7211902"] = self.OnSubFailed7211902,
        ["7211903"] = self.OnSubFailed7211903,
        ["7211904"] = self.OnSubFailed7211904
    }
end

function Quest72119:Start()
    print("Start")
end

function Quest72119:OnDestroy()
    print("OnDestroy")
end

function Quest72119:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72119:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72119:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72119:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72119:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72119:OnSubStart7211901(arg1)
    print("OnSubStart7211901")
end

function Quest72119:OnSubFinish7211901(arg1)
    print("OnSubFinish7211901")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72119:OnSubFailed7211901(arg1)
    print("OnSubFailed7211901")
end

function Quest72119:OnSubStart7211902(arg1)
    print("OnSubStart7211902")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72119:OnSubFinish7211902(arg1)
    print("OnSubFinish7211902")
end

function Quest72119:OnSubFailed7211902(arg1)
    print("OnSubFailed7211902")
end

function Quest72119:OnSubStart7211903(arg1)
    print("OnSubStart7211903")
end

function Quest72119:OnSubFinish7211903(arg1)
    print("OnSubFinish7211903")
end

function Quest72119:OnSubFailed7211903(arg1)
    print("OnSubFailed7211903")
end

function Quest72119:OnSubStart7211904(arg1)
    print("OnSubStart7211904")
end

function Quest72119:OnSubFinish7211904(arg1)
    print("OnSubFinish7211904")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72119:OnSubFailed7211904(arg1)
    print("OnSubFailed7211904")
end

return Quest72119
