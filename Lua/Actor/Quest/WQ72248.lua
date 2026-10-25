require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72248 = class("Quest72248", QuestActorProxy)
Quest72248.defaultAlias = "Quest72248"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72248:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72248:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224801"] = self.OnSubStart7224801,
        ["7224805"] = self.OnSubStart7224805,
        ["7224802"] = self.OnSubStart7224802,
        ["7224803"] = self.OnSubStart7224803,
        ["7224804"] = self.OnSubStart7224804
    }
end

function Quest72248:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224801"] = self.OnSubFinish7224801,
        ["7224805"] = self.OnSubFinish7224805,
        ["7224802"] = self.OnSubFinish7224802,
        ["7224803"] = self.OnSubFinish7224803,
        ["7224804"] = self.OnSubFinish7224804
    }
end

function Quest72248:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72248:Start()
    print("Start")
end

function Quest72248:OnDestroy()
    print("OnDestroy")
end

function Quest72248:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72248:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72248:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72248:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72248:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72248:OnSubStart7224801(arg1)
    print("OnSubStart7224801")
end

function Quest72248:OnSubFinish7224801(arg1)
    print("OnSubFinish7224801")
end

function Quest72248:OnSubStart7224805(arg1)
    print("OnSubStart7224805")
    self:NpcCreate(arg1, npcs.NPC20356Data.id, 1)
end

function Quest72248:OnSubFinish7224805(arg1)
    print("OnSubFinish7224805")
end

function Quest72248:OnSubStart7224802(arg1)
    print("OnSubStart7224802")
end

function Quest72248:OnSubFinish7224802(arg1)
    print("OnSubFinish7224802")
end

function Quest72248:OnSubStart7224803(arg1)
    print("OnSubStart7224803")
end

function Quest72248:OnSubFinish7224803(arg1)
    print("OnSubFinish7224803")
end

function Quest72248:OnSubStart7224804(arg1)
    print("OnSubStart7224804")
end

function Quest72248:OnSubFinish7224804(arg1)
    print("OnSubFinish7224804")
    self:NpcDestroyWithBlackscreen(5, npcs.NPC20356Data.alias)
end

return Quest72248
