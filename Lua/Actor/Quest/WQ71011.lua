require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71011 = class("Quest71011", QuestActorProxy)
Quest71011.defaultAlias = "Quest71011"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71011:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101101"] = self.OnSubStart7101101,
        ["7101102"] = self.OnSubStart7101102,
        ["7101103"] = self.OnSubStart7101103,
        ["7101104"] = self.OnSubStart7101104,
        ["7101105"] = self.OnSubStart7101105
    }
end

function Quest71011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101101"] = self.OnSubFinish7101101,
        ["7101102"] = self.OnSubFinish7101102,
        ["7101103"] = self.OnSubFinish7101103,
        ["7101104"] = self.OnSubFinish7101104,
        ["7101105"] = self.OnSubFinish7101105
    }
end

function Quest71011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101101"] = self.OnSubFailed7101101,
        ["7101102"] = self.OnSubFailed7101102,
        ["7101103"] = self.OnSubFailed7101103,
        ["7101104"] = self.OnSubFailed7101104,
        ["7101105"] = self.OnSubFailed7101105
    }
end

function Quest71011:Start()
    print("Start")
end

function Quest71011:OnDestroy()
    print("OnDestroy")
end

function Quest71011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71011:OnSubStart7101101(arg1)
    print("OnSubStart7101101")
end

function Quest71011:OnSubFinish7101101(arg1) end

function Quest71011:OnSubFailed7101101(arg1)
    print("OnSubFailed7101101")
end

function Quest71011:OnSubStart7101102(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7101101, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest71011:OnSubFinish7101102(arg1)
    print("OnSubFinish7101102")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest71011:OnSubFailed7101102(arg1)
    print("OnSubFailed7101102")
end

function Quest71011:OnSubStart7101103(arg1)
    print("OnSubStart7101103")
end

function Quest71011:OnSubFinish7101103(arg1)
    print("OnSubFinish7101103")
end

function Quest71011:OnSubFailed7101103(arg1)
    print("OnSubFailed7101103")
end

function Quest71011:OnSubStart7101104(arg1)
    print("OnSubStart7101104")
end

function Quest71011:OnSubFinish7101104(arg1)
    print("OnSubFinish7101104")
end

function Quest71011:OnSubFailed7101104(arg1)
    print("OnSubFailed7101104")
end

function Quest71011:OnSubStart7101105(arg1)
    print("OnSubStart7101105")
end

function Quest71011:OnSubFinish7101105(arg1)
    print("OnSubFinish7101105")
end

function Quest71011:OnSubFailed7101105(arg1)
    print("OnSubFailed7101105")
end

return Quest71011
