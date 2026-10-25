require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74668 = class("Quest74668", QuestActorProxy)
Quest74668.defaultAlias = "Quest74668"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74668:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74668:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7466802"] = self.OnSubStart7466802, ["7466801"] = self.OnSubStart7466801}
end

function Quest74668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7466802"] = self.OnSubFinish7466802, ["7466801"] = self.OnSubFinish7466801}
end

function Quest74668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74668:Start()
    print("Start")
end

function Quest74668:OnDestroy()
    print("OnDestroy")
end

function Quest74668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74668:CreateQuestNpcBesidePlayer(arg1, arg2, arg3)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n * arg3
    avatarPos.z = avatarPos.z + v * arg3
    this:CreateQuestNpcByIdWithPos(arg1, arg2, 0, avatarPos, avatarForward)
end

function Quest74668:OnSubStart7466802(arg1)
    print("OnSubStart7466802")
end

function Quest74668:OnSubFinish7466802(arg1)
    print("OnSubFinish7466802")
end

function Quest74668:OnSubStart7466801(arg1)
    print("OnSubStart7466801")
    if self:GetQuestVar(7466801, 0) == 1 then
        actorUtils.FinishQuestID(false, 7466801)
        return
    end

    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:CreateQuestNpcBesidePlayer(7466801, 1005, -0.8)
            this:RequestInteraction(npcs.PaimonData.alias)
        end)
    end)
end

function Quest74668:OnSubFinish7466801(arg1)
    print("OnSubFinish7466801")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

return Quest74668
