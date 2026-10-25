require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70142 = class("Quest70142", QuestActorProxy)
Quest70142.defaultAlias = "Quest70142"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70142:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7014203"] = self.OnSubStart7014203,
        ["7014201"] = self.OnSubStart7014201,
        ["7014202"] = self.OnSubStart7014202
    }
end

function Quest70142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7014203"] = self.OnSubFinish7014203,
        ["7014201"] = self.OnSubFinish7014201,
        ["7014202"] = self.OnSubFinish7014202
    }
end

function Quest70142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7014203"] = self.OnSubFailed7014203,
        ["7014201"] = self.OnSubFailed7014201,
        ["7014202"] = self.OnSubFailed7014202
    }
end

function Quest70142:Start()
    print("Start")
end

function Quest70142:OnDestroy()
    print("OnDestroy")
end

function Quest70142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70142:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70142:CSfinish7014201()
    print("CSfinish7014201")
    self:FinishQuestID(false, 7014201)
end

function Quest70142:OnSubStart7014203(arg1)
    print("OnSubStart7014203")
end

function Quest70142:OnSubFinish7014203(arg1)
    print("OnSubFinish7014203")
end

function Quest70142:OnSubFailed7014203(arg1)
    print("OnSubFailed7014203")
end

function Quest70142:OnSubStart7014201(arg1)
    print("OnSubStart7014201")
    self:TransmitPlayerByQuestId(7014201, 7014201)
    self:PlayCutsceneIndex("7014201", self.CSfinish7014201, nil, nil, false)
end

function Quest70142:OnSubFinish7014201(arg1)
    print("OnSubFinish7014201")
end

function Quest70142:OnSubFailed7014201(arg1)
    print("OnSubFailed7014201")
end

function Quest70142:OnSubStart7014202(arg1)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    avatarPos.x = 1042.529
    avatarPos.y = 696.4891
    avatarPos.z = -820.9291
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    self.CreateQuestNpcByIdWithPos(self, 7014202, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(avatarForward))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70142:OnSubFinish7014202(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70142:OnSubFailed7014202(arg1)
    print("OnSubFailed7014202")
end

return Quest70142
