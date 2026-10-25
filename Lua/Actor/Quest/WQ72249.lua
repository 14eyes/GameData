require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72249 = class("Quest72249", QuestActorProxy)
Quest72249.defaultAlias = "Quest72249"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72249:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72249:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224901"] = self.OnSubStart7224901,
        ["7224905"] = self.OnSubStart7224905,
        ["7224902"] = self.OnSubStart7224902,
        ["7224903"] = self.OnSubStart7224903,
        ["7224904"] = self.OnSubStart7224904
    }
end

function Quest72249:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224901"] = self.OnSubFinish7224901,
        ["7224905"] = self.OnSubFinish7224905,
        ["7224902"] = self.OnSubFinish7224902,
        ["7224903"] = self.OnSubFinish7224903,
        ["7224904"] = self.OnSubFinish7224904
    }
end

function Quest72249:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72249:Start()
    print("Start")
end

function Quest72249:OnDestroy()
    print("OnDestroy")
end

function Quest72249:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72249:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72249:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72249:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72249:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72249:OnSubStart7224901(arg1)
    print("OnSubStart7224901")
end

function Quest72249:OnSubFinish7224901(arg1)
    print("OnSubFinish7224901")
end

function Quest72249:OnSubStart7224905(arg1)
    print("OnSubStart7224905")
    self:NpcCreate(arg1, npcs.NPC20357Data.id, 1)
end

function Quest72249:OnSubFinish7224905(arg1)
    print("OnSubFinish7224905")
end

function Quest72249:OnSubStart7224902(arg1)
    print("OnSubStart7224902")
end

function Quest72249:OnSubFinish7224902(arg1)
    print("OnSubFinish7224902")
end

function Quest72249:OnSubStart7224903(arg1)
    print("OnSubStart7224903")
end

function Quest72249:OnSubFinish7224903(arg1)
    print("OnSubFinish7224903")
end

function Quest72249:OnSubStart7224904(arg1)
    print("OnSubStart7224904")
end

function Quest72249:OnSubFinish7224904(arg1)
    print("OnSubFinish7224904")
    self:NpcDestroyWithBlackscreen(5, npcs.NPC20357Data.alias)
end

return Quest72249
