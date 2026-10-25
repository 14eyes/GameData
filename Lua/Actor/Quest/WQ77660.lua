require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77660 = class("Quest77660", QuestActorProxy)
Quest77660.defaultAlias = "Quest77660"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest77660:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest77660:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7766004"] = self.OnSubStart7766004,
        ["7766005"] = self.OnSubStart7766005,
        ["7766001"] = self.OnSubStart7766001,
        ["7766002"] = self.OnSubStart7766002,
        ["7766007"] = self.OnSubStart7766007,
        ["7766006"] = self.OnSubStart7766006,
        ["7766003"] = self.OnSubStart7766003
    }
end

function Quest77660:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7766004"] = self.OnSubFinish7766004,
        ["7766005"] = self.OnSubFinish7766005,
        ["7766001"] = self.OnSubFinish7766001,
        ["7766002"] = self.OnSubFinish7766002,
        ["7766007"] = self.OnSubFinish7766007,
        ["7766006"] = self.OnSubFinish7766006,
        ["7766003"] = self.OnSubFinish7766003
    }
end

function Quest77660:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7766006"] = self.OnSubFailed7766006}
end

function Quest77660:Start()
    print("Start")
end

function Quest77660:OnDestroy()
    print("OnDestroy")
end

function Quest77660:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77660:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77660:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77660:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q77660Trigger", 77660)
end

function Quest77660:ActorDestroy(arg1, arg2)
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

function Quest77660:OnSubStart7766004(arg1)
    print("OnSubStart7766004")
    actorUtils.FinishQuestWithParam({false}, {7766004})
end

function Quest77660:OnSubFinish7766004(arg1)
    print("OnSubFinish7766004")
end

function Quest77660:OnSubStart7766005(arg1)
    print("OnSubStart7766005")
end

function Quest77660:OnSubFinish7766005(arg1)
    print("OnSubFinish7766005")
end

function Quest77660:OnSubStart7766001(arg1)
    print("OnSubStart7766001")
end

function Quest77660:OnSubFinish7766001(arg1)
    print("OnSubFinish7766001")
end

function Quest77660:OnSubStart7766002(arg1)
    print("OnSubStart7766002")
end

function Quest77660:OnSubFinish7766002(arg1)
    print("OnSubFinish7766002")
end

function Quest77660:OnSubStart7766007(arg1)
    print("OnSubStart7766007")
    actorMgr:CreateActorWithPos("Q77660Trigger", "Actor/Gadget/Q77660Trigger", 70900002, 0, points._Q77660TriggerPoint_.pos, points._Q77660TriggerPoint_.rot, true, false, 3, nil, 0, 77660)
end

function Quest77660:OnSubFinish7766007(arg1)
    print("OnSubFinish7766007")
    this:ActorDestroy("Q77660Trigger", 77660)
end

function Quest77660:OnSubStart7766006(arg1)
    print("OnSubStart7766006")
end

function Quest77660:OnSubFinish7766006(arg1)
    print("OnSubFinish7766006")
end

function Quest77660:OnSubFailed7766006(arg1)
    print("OnSubFailed7766006")
    this:RecycleAllRes()
end

function Quest77660:OnSubStart7766003(arg1)
    print("OnSubStart7766003")
end

function Quest77660:OnSubFinish7766003(arg1)
    print("OnSubFinish7766003")
end

return Quest77660
