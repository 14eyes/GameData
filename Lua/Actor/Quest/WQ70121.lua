require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70121 = class("Quest70121", QuestActorProxy)
Quest70121.defaultAlias = "Quest70121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7012101"] = self.OnSubStart7012101,
        ["7012102"] = self.OnSubStart7012102,
        ["7012103"] = self.OnSubStart7012103,
        ["7012104"] = self.OnSubStart7012104,
        ["7012105"] = self.OnSubStart7012105,
        ["7012106"] = self.OnSubStart7012106,
        ["7012107"] = self.OnSubStart7012107,
        ["7012108"] = self.OnSubStart7012108
    }
end

function Quest70121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7012101"] = self.OnSubFinish7012101,
        ["7012102"] = self.OnSubFinish7012102,
        ["7012103"] = self.OnSubFinish7012103,
        ["7012104"] = self.OnSubFinish7012104,
        ["7012105"] = self.OnSubFinish7012105,
        ["7012106"] = self.OnSubFinish7012106,
        ["7012107"] = self.OnSubFinish7012107,
        ["7012108"] = self.OnSubFinish7012108
    }
end

function Quest70121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7012101"] = self.OnSubFailed7012101,
        ["7012102"] = self.OnSubFailed7012102,
        ["7012103"] = self.OnSubFailed7012103,
        ["7012104"] = self.OnSubFailed7012104,
        ["7012105"] = self.OnSubFailed7012105,
        ["7012106"] = self.OnSubFailed7012106,
        ["7012107"] = self.OnSubFailed7012107,
        ["7012108"] = self.OnSubFailed7012108
    }
end

function Quest70121:Start()
    print("Start")
end

function Quest70121:OnDestroy()
    print("OnDestroy")
end

function Quest70121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70121:OnSubStart7012101(arg1)
    print("OnSubStart7012101")
end

function Quest70121:OnSubFinish7012101(arg1)
    print("OnSubFinish7012101")
end

function Quest70121:OnSubFailed7012101(arg1)
    print("OnSubFailed7012101")
end

function Quest70121:OnSubStart7012102(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012102, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70121:OnSubFinish7012102(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70121:OnSubFailed7012102(arg1)
    print("OnSubFailed7012102")
end

function Quest70121:OnSubStart7012103(arg1)
    print("OnSubStart7012103")
end

function Quest70121:OnSubFinish7012103(arg1)
    print("OnSubFinish7012103")
end

function Quest70121:OnSubFailed7012103(arg1)
    print("OnSubFailed7012103")
end

function Quest70121:OnSubStart7012104(arg1)
    print("OnSubStart7012104")
end

function Quest70121:OnSubFinish7012104(arg1)
    print("OnSubFinish7012104")
end

function Quest70121:OnSubFailed7012104(arg1)
    print("OnSubFailed7012104")
end

function Quest70121:OnSubStart7012105(arg1)
    print("OnSubStart7012105")
end

function Quest70121:OnSubFinish7012105(arg1)
    print("OnSubFinish7012105")
end

function Quest70121:OnSubFailed7012105(arg1)
    print("OnSubFailed7012105")
end

function Quest70121:OnSubStart7012106(arg1)
    print("OnSubStart7012106")
end

function Quest70121:OnSubFinish7012106(arg1)
    print("OnSubFinish7012106")
end

function Quest70121:OnSubFailed7012106(arg1)
    print("OnSubFailed7012106")
end

function Quest70121:OnSubStart7012107(arg1)
    print("OnSubStart7012107")
end

function Quest70121:OnSubFinish7012107(arg1)
    print("OnSubFinish7012107")
end

function Quest70121:OnSubFailed7012107(arg1)
    print("OnSubFailed7012107")
end

function Quest70121:OnSubStart7012108(arg1)
    print("OnSubStart7012108")
end

function Quest70121:OnSubFinish7012108(arg1)
    print("OnSubFinish7012108")
end

function Quest70121:OnSubFailed7012108(arg1)
    print("OnSubFailed7012108")
end

return Quest70121
