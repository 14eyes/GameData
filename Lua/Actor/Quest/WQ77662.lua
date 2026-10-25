require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77662 = class("Quest77662", QuestActorProxy)
Quest77662.defaultAlias = "Quest77662"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77662:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77662:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766204"] = self.OnSubStart7766204,
        ["7766205"] = self.OnSubStart7766205,
        ["7766201"] = self.OnSubStart7766201,
        ["7766202"] = self.OnSubStart7766202,
        ["7766207"] = self.OnSubStart7766207,
        ["7766206"] = self.OnSubStart7766206,
        ["7766203"] = self.OnSubStart7766203
    }
end

function Quest77662:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766204"] = self.OnSubFinish7766204,
        ["7766205"] = self.OnSubFinish7766205,
        ["7766201"] = self.OnSubFinish7766201,
        ["7766202"] = self.OnSubFinish7766202,
        ["7766207"] = self.OnSubFinish7766207,
        ["7766206"] = self.OnSubFinish7766206,
        ["7766203"] = self.OnSubFinish7766203
    }
end

function Quest77662:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7766206"] = self.OnSubFailed7766206}
end

function Quest77662:Start()
    print("Start")
end

function Quest77662:OnDestroy()
    print("OnDestroy")
end

function Quest77662:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77662:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77662:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77662:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77662Trigger", 77662)
end

function Quest77662:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77662:OnSubStart7766204(arg1)
    print("OnSubStart7766204")
    actorUtils.FinishQuestWithParam({false}, {7766204})
end

function Quest77662:OnSubFinish7766204(arg1)
    print("OnSubFinish7766204")
end

function Quest77662:OnSubStart7766205(arg1)
    print("OnSubStart7766205")
end

function Quest77662:OnSubFinish7766205(arg1)
    print("OnSubFinish7766205")
end

function Quest77662:OnSubStart7766201(arg1)
    print("OnSubStart7766201")
end

function Quest77662:OnSubFinish7766201(arg1)
    print("OnSubFinish7766201")
end

function Quest77662:OnSubStart7766202(arg1)
    print("OnSubStart7766202")
end

function Quest77662:OnSubFinish7766202(arg1)
    print("OnSubFinish7766202")
end

function Quest77662:OnSubStart7766207(arg1)
    print("OnSubStart7766207")
    actorMgr:CreateActorWithPos("Q77662Trigger", "Actor/Gadget/Q77662Trigger", 70900002, 0, points._Q77662TriggerPoint_.pos, points._Q77662TriggerPoint_.rot, true, false, 3, nil, 0, 77662)
end

function Quest77662:OnSubFinish7766207(arg1)
    print("OnSubFinish7766207")
    this:ActorDestroy("Q77662Trigger", 77662)
end

function Quest77662:OnSubStart7766206(arg1)
    print("OnSubStart7766206")
end

function Quest77662:OnSubFinish7766206(arg1)
    print("OnSubFinish7766206")
end

function Quest77662:OnSubFailed7766206(arg1)
    print("OnSubFailed7766206")
    this:RecycleAllRes()
end

function Quest77662:OnSubStart7766203(arg1)
    print("OnSubStart7766203")
end

function Quest77662:OnSubFinish7766203(arg1)
    print("OnSubFinish7766203")
end

return Quest77662
