require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75194 = class("Quest75194", QuestActorProxy)
Quest75194.defaultAlias = "Quest75194"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75194:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75194:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519405"] = self.OnSubStart7519405,
        ["7519401"] = self.OnSubStart7519401,
        ["7519402"] = self.OnSubStart7519402,
        ["7519403"] = self.OnSubStart7519403,
        ["7519404"] = self.OnSubStart7519404
    }
end

function Quest75194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519405"] = self.OnSubFinish7519405,
        ["7519401"] = self.OnSubFinish7519401,
        ["7519402"] = self.OnSubFinish7519402,
        ["7519403"] = self.OnSubFinish7519403,
        ["7519404"] = self.OnSubFinish7519404
    }
end

function Quest75194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75194:Start()
    print("Start")
end

function Quest75194:OnDestroy()
    print("OnDestroy")
end

function Quest75194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75194:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75194:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7519404Trigger")
end

function Quest75194:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 751940101 then
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest75194:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75194:OnSubStart7519405(arg1)
    print("OnSubStart7519405")
end

function Quest75194:OnSubFinish7519405(arg1)
    print("OnSubFinish7519405")
end

function Quest75194:OnSubStart7519401(arg1)
    print("OnSubStart7519401")
    this:RequestInteractionForceAlias(npcs.Npc6459.alias, "", true)
end

function Quest75194:OnSubFinish7519401(arg1)
    print("OnSubFinish7519401")
end

function Quest75194:OnSubStart7519402(arg1)
    print("OnSubStart7519402")
end

function Quest75194:OnSubFinish7519402(arg1)
    print("OnSubFinish7519402")
end

function Quest75194:OnSubStart7519403(arg1)
    print("OnSubStart7519403")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_start, nil, nil, nil)
end

function Quest75194:OnSubFinish7519403(arg1)
    print("OnSubFinish7519403")
    this:TransmitPlayerUseCustomizedTplById(arg1, 2, 57)
end

function Quest75194:OnSubStart7519404(arg1)
    print("OnSubStart7519404")
    actorMgr:CreateActorWithPos("Q7519404Trigger", "Actor/Gadget/Q7519404Trigger", 70900002, 0, points.Q7519404Trigger.pos, points.Q7519404Trigger.rot, true, false, 3)
end

function Quest75194:OnSubFinish7519404(arg1)
    print("OnSubFinish7519404")
end

return Quest75194
