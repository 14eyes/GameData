require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73210 = class("Quest73210", QuestActorProxy)
Quest73210.defaultAlias = "Quest73210"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73210:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73210:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7321006"] = self.OnSubStart7321006,
        ["7321004"] = self.OnSubStart7321004,
        ["7321005"] = self.OnSubStart7321005,
        ["7321003"] = self.OnSubStart7321003,
        ["7321002"] = self.OnSubStart7321002,
        ["7321001"] = self.OnSubStart7321001
    }
end

function Quest73210:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7321006"] = self.OnSubFinish7321006,
        ["7321004"] = self.OnSubFinish7321004,
        ["7321005"] = self.OnSubFinish7321005,
        ["7321003"] = self.OnSubFinish7321003,
        ["7321002"] = self.OnSubFinish7321002,
        ["7321001"] = self.OnSubFinish7321001
    }
end

function Quest73210:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73210:Start()
    print("Start")
end

function Quest73210:OnDestroy()
    print("OnDestroy")
end

function Quest73210:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73210:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73210:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73210:OnSubStart7321006(arg1)
    print("OnSubStart7321006")
end

function Quest73210:OnSubFinish7321006(arg1)
    print("OnSubFinish7321006")
end

function Quest73210:OnSubStart7321004(arg1)
    print("OnSubStart7321004")
end

function Quest73210:OnSubFinish7321004(arg1)
    print("OnSubFinish7321004")
end

function Quest73210:OnSubStart7321005(arg1)
    print("OnSubStart7321005")
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
    self.CreateQuestNpcByIdWithPos(self, 7321005, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 0.5, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest73210:OnSubFinish7321005(arg1)
    print("OnSubFinish7321005")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest73210:OnSubStart7321003(arg1)
    print("OnSubStart7321003")
end

function Quest73210:OnSubFinish7321003(arg1)
    print("OnSubFinish7321003")
end

function Quest73210:OnSubStart7321002(arg1)
    print("OnSubStart7321002")
end

function Quest73210:OnSubFinish7321002(arg1)
    print("OnSubFinish7321002")
end

function Quest73210:OnSubStart7321001(arg1)
    print("OnSubStart7321001")
end

function Quest73210:OnSubFinish7321001(arg1)
    print("OnSubFinish7321001")
end

return Quest73210
