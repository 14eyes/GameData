require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77659 = class("Quest77659", QuestActorProxy)
Quest77659.defaultAlias = "Quest77659"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77659:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77659:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765904"] = self.OnSubStart7765904,
        ["7765905"] = self.OnSubStart7765905,
        ["7765901"] = self.OnSubStart7765901,
        ["7765902"] = self.OnSubStart7765902,
        ["7765907"] = self.OnSubStart7765907,
        ["7765906"] = self.OnSubStart7765906,
        ["7765903"] = self.OnSubStart7765903
    }
end

function Quest77659:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765904"] = self.OnSubFinish7765904,
        ["7765905"] = self.OnSubFinish7765905,
        ["7765901"] = self.OnSubFinish7765901,
        ["7765902"] = self.OnSubFinish7765902,
        ["7765907"] = self.OnSubFinish7765907,
        ["7765906"] = self.OnSubFinish7765906,
        ["7765903"] = self.OnSubFinish7765903
    }
end

function Quest77659:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7765906"] = self.OnSubFailed7765906}
end

function Quest77659:Start()
    print("Start")
end

function Quest77659:OnDestroy()
    print("OnDestroy")
end

function Quest77659:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77659:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77659:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77659:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77659Trigger", 77659)
end

function Quest77659:ActorDestroy(arg1, arg2)
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

function Quest77659:OnSubStart7765904(arg1)
    print("OnSubStart7765904")
    actorUtils.FinishQuestWithParam({false}, {7765904})
end

function Quest77659:OnSubFinish7765904(arg1)
    print("OnSubFinish7765904")
end

function Quest77659:OnSubStart7765905(arg1)
    print("OnSubStart7765905")
end

function Quest77659:OnSubFinish7765905(arg1)
    print("OnSubFinish7765905")
end

function Quest77659:OnSubStart7765901(arg1)
    print("OnSubStart7765901")
end

function Quest77659:OnSubFinish7765901(arg1)
    print("OnSubFinish7765901")
end

function Quest77659:OnSubStart7765902(arg1)
    print("OnSubStart7765902")
end

function Quest77659:OnSubFinish7765902(arg1)
    print("OnSubFinish7765902")
end

function Quest77659:OnSubStart7765907(arg1)
    print("OnSubStart7765907")
    actorMgr:CreateActorWithPos("Q77659Trigger", "Actor/Gadget/Q77659Trigger", 70900002, 0, points._Q77659TriggerPoint_.pos, points._Q77659TriggerPoint_.rot, true, false, 3, nil, 0, 77659)
end

function Quest77659:OnSubFinish7765907(arg1)
    print("OnSubFinish7765907")
    this:ActorDestroy("Q77659Trigger", 77659)
end

function Quest77659:OnSubStart7765906(arg1)
    print("OnSubStart7765906")
end

function Quest77659:OnSubFinish7765906(arg1)
    print("OnSubFinish7765906")
end

function Quest77659:OnSubFailed7765906(arg1)
    print("OnSubFailed7765906")
    this:RecycleAllRes()
end

function Quest77659:OnSubStart7765903(arg1)
    print("OnSubStart7765903")
end

function Quest77659:OnSubFinish7765903(arg1)
    print("OnSubFinish7765903")
end

return Quest77659
