require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70124 = class("Quest70124", QuestActorProxy)
Quest70124.defaultAlias = "Quest70124"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70124:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70124:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7012401"] = self.OnSubStart7012401,
        ["7012402"] = self.OnSubStart7012402,
        ["7012403"] = self.OnSubStart7012403,
        ["7012404"] = self.OnSubStart7012404,
        ["7012405"] = self.OnSubStart7012405,
        ["7012406"] = self.OnSubStart7012406,
        ["7012407"] = self.OnSubStart7012407,
        ["7012408"] = self.OnSubStart7012408,
        ["7012409"] = self.OnSubStart7012409,
        ["7012410"] = self.OnSubStart7012410,
        ["7012411"] = self.OnSubStart7012411,
        ["7012412"] = self.OnSubStart7012412
    }
end

function Quest70124:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7012401"] = self.OnSubFinish7012401,
        ["7012402"] = self.OnSubFinish7012402,
        ["7012403"] = self.OnSubFinish7012403,
        ["7012404"] = self.OnSubFinish7012404,
        ["7012405"] = self.OnSubFinish7012405,
        ["7012406"] = self.OnSubFinish7012406,
        ["7012407"] = self.OnSubFinish7012407,
        ["7012408"] = self.OnSubFinish7012408,
        ["7012409"] = self.OnSubFinish7012409,
        ["7012410"] = self.OnSubFinish7012410,
        ["7012411"] = self.OnSubFinish7012411,
        ["7012412"] = self.OnSubFinish7012412
    }
end

function Quest70124:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7012401"] = self.OnSubFailed7012401,
        ["7012402"] = self.OnSubFailed7012402,
        ["7012403"] = self.OnSubFailed7012403,
        ["7012404"] = self.OnSubFailed7012404,
        ["7012405"] = self.OnSubFailed7012405,
        ["7012406"] = self.OnSubFailed7012406,
        ["7012407"] = self.OnSubFailed7012407,
        ["7012408"] = self.OnSubFailed7012408,
        ["7012409"] = self.OnSubFailed7012409,
        ["7012410"] = self.OnSubFailed7012410,
        ["7012411"] = self.OnSubFailed7012411,
        ["7012412"] = self.OnSubFailed7012412
    }
end

function Quest70124:Start()
    print("Start")
end

function Quest70124:OnDestroy()
    print("OnDestroy")
end

function Quest70124:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70124:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70124:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70124:OnSubStart7012401(arg1)
    print("OnSubStart7012401")
end

function Quest70124:OnSubFinish7012401(arg1)
    print("OnSubFinish7012401")
end

function Quest70124:OnSubFailed7012401(arg1)
    print("OnSubFailed7012401")
end

function Quest70124:OnSubStart7012402(arg1)
    print("OnSubStart7012402")
end

function Quest70124:OnSubFinish7012402(arg1)
    print("OnSubFinish7012402")
end

function Quest70124:OnSubFailed7012402(arg1)
    print("OnSubFailed7012402")
end

function Quest70124:OnSubStart7012403(arg1)
    print("OnSubStart7012403")
end

function Quest70124:OnSubFinish7012403(arg1)
    print("OnSubFinish7012403")
end

function Quest70124:OnSubFailed7012403(arg1)
    print("OnSubFailed7012403")
end

function Quest70124:OnSubStart7012404(arg1)
    print("OnSubStart7012404")
end

function Quest70124:OnSubFinish7012404(arg1)
    print("OnSubFinish7012404")
end

function Quest70124:OnSubFailed7012404(arg1)
    print("OnSubFailed7012404")
end

function Quest70124:OnSubStart7012405(arg1)
    print("OnSubStart7012405")
end

function Quest70124:OnSubFinish7012405(arg1)
    print("OnSubFinish7012405")
end

function Quest70124:OnSubFailed7012405(arg1)
    print("OnSubFailed7012405")
end

function Quest70124:OnSubStart7012406(arg1)
    print("OnSubStart7012406")
end

function Quest70124:OnSubFinish7012406(arg1)
    print("OnSubFinish7012406")
end

function Quest70124:OnSubFailed7012406(arg1)
    print("OnSubFailed7012406")
end

function Quest70124:OnSubStart7012407(arg1)
    print("OnSubStart7012407")
end

function Quest70124:OnSubFinish7012407(arg1)
    print("OnSubFinish7012407")
end

function Quest70124:OnSubFailed7012407(arg1)
    print("OnSubFailed7012407")
end

function Quest70124:OnSubStart7012408(arg1)
    print("OnSubStart7012408")
end

function Quest70124:OnSubFinish7012408(arg1)
    print("OnSubFinish7012408")
end

function Quest70124:OnSubFailed7012408(arg1)
    print("OnSubFailed7012408")
end

function Quest70124:OnSubStart7012409(arg1)
    print("OnSubStart7012409")
end

function Quest70124:OnSubFinish7012409(arg1)
    print("OnSubFinish7012409")
end

function Quest70124:OnSubFailed7012409(arg1)
    print("OnSubFailed7012409")
end

function Quest70124:OnSubStart7012410(arg1)
    print("OnSubStart7012410")
end

function Quest70124:OnSubFinish7012410(arg1)
    if self:GetSubQuestState(7012401) == 3 then
        self:SetQuestVarByMainId(0, 3)
        print("SetQuestVarByMainId(0, 3)success")
    else
        self:SetQuestVarByMainId(0, 1)
        print("SetQuestVarByMainId(0, 1)success")
    end
end

function Quest70124:OnSubFailed7012410(arg1)
    print("OnSubFailed7012410")
end

function Quest70124:OnSubStart7012411(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012411, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70124:OnSubFinish7012411(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70124:OnSubFailed7012411(arg1)
    print("OnSubFailed7012411")
end

function Quest70124:OnSubStart7012412(arg1)
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
    self.CreateQuestNpcByIdWithPos(self, 7012411, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v2))
    self.CallDelay(self, 1, function()
        self:RequestInteraction(npcs.PaimonData.alias)
    end)
end

function Quest70124:OnSubFinish7012412(arg1)
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest70124:OnSubFailed7012412(arg1)
    print("OnSubFailed7012412")
end

return Quest70124
