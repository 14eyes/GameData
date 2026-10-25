require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71089 = class("Quest71089", QuestActorProxy)
Quest71089.defaultAlias = "Quest71089"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71089:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71089:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7108901"] = self.OnSubStart7108901,
        ["7108902"] = self.OnSubStart7108902,
        ["7108903"] = self.OnSubStart7108903
    }
end

function Quest71089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7108901"] = self.OnSubFinish7108901,
        ["7108902"] = self.OnSubFinish7108902,
        ["7108903"] = self.OnSubFinish7108903
    }
end

function Quest71089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71089:Start()
    print("Start")
end

function Quest71089:OnDestroy()
    print("OnDestroy")
end

function Quest71089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71089:OnSubStart7108901(arg1)
    print("OnSubStart7108901")
end

function Quest71089:OnSubFinish7108901(arg1)
    print("OnSubFinish7108901")
end

function Quest71089:OnSubStart7108902(arg1)
    print("OnSubStart7108902")
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
    self.CreateQuestNpcByIdWithPos(self, 7108902, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71089:OnSubFinish7108902(arg1)
    print("OnSubFinish7108902")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71089:OnSubStart7108903(arg1)
    print("OnSubStart7108903")
end

function Quest71089:OnSubFinish7108903(arg1)
    print("OnSubFinish7108903")
end

return Quest71089
