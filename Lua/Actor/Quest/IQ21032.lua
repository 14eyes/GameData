require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21032 = class("Quest21032", QuestActorProxy)
Quest21032.defaultAlias = "Quest21032"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest21032:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103201"] = self.OnSubStart2103201,
        ["2103202"] = self.OnSubStart2103202,
        ["2103203"] = self.OnSubStart2103203,
        ["2103204"] = self.OnSubStart2103204,
        ["2103205"] = self.OnSubStart2103205
    }
end

function Quest21032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103201"] = self.OnSubFinish2103201,
        ["2103202"] = self.OnSubFinish2103202,
        ["2103203"] = self.OnSubFinish2103203,
        ["2103204"] = self.OnSubFinish2103204,
        ["2103205"] = self.OnSubFinish2103205
    }
end

function Quest21032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21032:Start()
    print("Start")
end

function Quest21032:OnDestroy()
    print("OnDestroy")
end

function Quest21032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest21032:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21032:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest21032:OnSubStart2103201(arg1)
    print("OnSubStart2103201")
    this:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
end

function Quest21032:OnSubFinish2103201(arg1)
    print("OnSubFinish2103201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

function Quest21032:OnSubStart2103202(arg1)
    print("OnSubStart2103202")
end

function Quest21032:OnSubFinish2103202(arg1)
    print("OnSubFinish2103202")
end

function Quest21032:OnSubStart2103203(arg1)
    print("OnSubStart2103203")
end

function Quest21032:OnSubFinish2103203(arg1)
    print("OnSubFinish2103203")
end

function Quest21032:OnSubStart2103204(arg1)
    print("OnSubStart2103204")
    this:CallDelay(2, function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:CreateQuestNpcFaceToPlayer(2103204, 2400, 1)
            this:RequestInteraction(npcs.Npc2400Data.alias)
        end, nil, nil, 0, false, true)
    end)
end

function Quest21032:OnSubFinish2103204(arg1)
    print("OnSubFinish2103204")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

function Quest21032:OnSubStart2103205(arg1)
    print("OnSubStart2103205")
    this:CallDelay(2, function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:CreateQuestNpcFaceToPlayer(2103205, 2400, 1)
            this:RequestInteraction(npcs.Npc2400Data.alias)
        end, nil, nil, 0, false, true)
    end)
end

function Quest21032:OnSubFinish2103205(arg1)
    print("OnSubFinish2103205")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
end

return Quest21032
