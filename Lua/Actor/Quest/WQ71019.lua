require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71019 = class("Quest71019", QuestActorProxy)
Quest71019.defaultAlias = "Quest71019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101901"] = self.OnSubStart7101901,
        ["7101902"] = self.OnSubStart7101902,
        ["7101903"] = self.OnSubStart7101903
    }
end

function Quest71019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101901"] = self.OnSubFinish7101901,
        ["7101902"] = self.OnSubFinish7101902,
        ["7101903"] = self.OnSubFinish7101903
    }
end

function Quest71019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101901"] = self.OnSubFailed7101901,
        ["7101902"] = self.OnSubFailed7101902,
        ["7101903"] = self.OnSubFailed7101903
    }
end

function Quest71019:Start()
    print("Start")
end

function Quest71019:OnDestroy()
    print("OnDestroy")
end

function Quest71019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71019:OnSubStart7101901(arg1)
    print("OnSubStart7101901")
end

function Quest71019:OnSubFinish7101901(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7101901, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71019:OnSubFailed7101901(arg1)
    print("OnSubFailed7101901")
end

function Quest71019:OnSubStart7101902(arg1)
    print("OnSubStart7101902")
end

function Quest71019:OnSubFinish7101902(arg1)
    print("OnSubFinish7101902")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71019:OnSubFailed7101902(arg1)
    print("OnSubFailed7101902")
end

function Quest71019:OnSubStart7101903(arg1)
    print("OnSubStart7101903")
end

function Quest71019:OnSubFinish7101903(arg1)
    print("OnSubFinish7101903")
end

function Quest71019:OnSubFailed7101903(arg1)
    print("OnSubFailed7101903")
end

return Quest71019
