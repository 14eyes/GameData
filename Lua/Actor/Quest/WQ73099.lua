require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73099 = class("Quest73099", QuestActorProxy)
Quest73099.defaultAlias = "Quest73099"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73099:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7309901"] = self.OnSubStart7309901,
        ["7309904"] = self.OnSubStart7309904,
        ["7309902"] = self.OnSubStart7309902,
        ["7309903"] = self.OnSubStart7309903,
        ["7309905"] = self.OnSubStart7309905
    }
end

function Quest73099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7309901"] = self.OnSubFinish7309901,
        ["7309904"] = self.OnSubFinish7309904,
        ["7309902"] = self.OnSubFinish7309902,
        ["7309903"] = self.OnSubFinish7309903,
        ["7309905"] = self.OnSubFinish7309905
    }
end

function Quest73099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73099:Start()
    print("Start")
end

function Quest73099:OnDestroy()
    print("OnDestroy")
end

function Quest73099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73099:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73099:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest73099:OnSubStart7309901(arg1)
    print("OnSubStart7309901")
end

function Quest73099:OnSubFinish7309901(arg1)
    print("OnSubFinish7309901")
end

function Quest73099:OnSubStart7309904(arg1)
    print("OnSubStart7309904")
end

function Quest73099:OnSubFinish7309904(arg1)
    print("OnSubFinish7309904")
end

function Quest73099:OnSubStart7309902(arg1)
    print("OnSubStart7309902")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    self.CreateQuestNpcByIdWithPos(self, 7309902, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.5, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest73099:OnSubFinish7309902(arg1)
    print("OnSubFinish7309902")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73099:OnSubStart7309903(arg1)
    print("OnSubStart7309903")
end

function Quest73099:OnSubFinish7309903(arg1)
    print("OnSubFinish7309903")
end

function Quest73099:OnSubStart7309905(arg1)
    print("OnSubStart7309905")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20840Data.id, 1, npcs.Npc20840Data.alias)
    self:CreateQuestNpc(arg1, npcs.Npc4246Data.id, 2)
end

function Quest73099:OnSubFinish7309905(arg1)
    print("OnSubFinish7309905")
    self:GetQuestNpcActor(npcs.Npc20840Data.alias):DestroyWithDisappear(false)
end

return Quest73099
