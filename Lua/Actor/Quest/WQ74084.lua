require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74084 = class("Quest74084", QuestActorProxy)
Quest74084.defaultAlias = "Quest74084"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74084:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74084:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408404"] = self.OnSubStart7408404,
        ["7408410"] = self.OnSubStart7408410,
        ["7408412"] = self.OnSubStart7408412,
        ["7408409"] = self.OnSubStart7408409,
        ["7408401"] = self.OnSubStart7408401,
        ["7408413"] = self.OnSubStart7408413,
        ["7408405"] = self.OnSubStart7408405,
        ["7408407"] = self.OnSubStart7408407,
        ["7408408"] = self.OnSubStart7408408,
        ["7408403"] = self.OnSubStart7408403,
        ["7408411"] = self.OnSubStart7408411
    }
end

function Quest74084:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408404"] = self.OnSubFinish7408404,
        ["7408410"] = self.OnSubFinish7408410,
        ["7408412"] = self.OnSubFinish7408412,
        ["7408409"] = self.OnSubFinish7408409,
        ["7408401"] = self.OnSubFinish7408401,
        ["7408413"] = self.OnSubFinish7408413,
        ["7408405"] = self.OnSubFinish7408405,
        ["7408407"] = self.OnSubFinish7408407,
        ["7408408"] = self.OnSubFinish7408408,
        ["7408403"] = self.OnSubFinish7408403,
        ["7408411"] = self.OnSubFinish7408411
    }
end

function Quest74084:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74084:Start()
    print("Start")
end

function Quest74084:OnDestroy()
    print("OnDestroy")
end

function Quest74084:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74084:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74084:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74084:OnSubStart7408404(arg1)
    print("OnSubStart7408404")
    this:CreateQuestNpc(arg1, npcs.Npc21122Data.id, 0)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:PlayCutsceneIndex(7408405, function(arg1)
            actorUtils.FinishQuestID(false, 7408404)
        end, nil, nil, false)
    end)
end

function Quest74084:OnSubFinish7408404(arg1)
    print("OnSubFinish7408404")
end

function Quest74084:OnSubStart7408410(arg1)
    print("OnSubStart7408410")
end

function Quest74084:OnSubFinish7408410(arg1)
    print("OnSubFinish7408410")
    this:CallDelay(0.5, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId03)
    end)
end

function Quest74084:OnSubStart7408412(arg1)
    print("OnSubStart7408412")
end

function Quest74084:OnSubFinish7408412(arg1)
    print("OnSubFinish7408412")
end

function Quest74084:OnSubStart7408409(arg1)
    print("OnSubStart7408409")
    this:CreateQuestNpc(arg1, npcs.Npc21122Data.id, 0)
end

function Quest74084:OnSubFinish7408409(arg1)
    print("OnSubFinish7408409")
end

function Quest74084:OnSubStart7408401(arg1)
    print("OnSubStart7408401")
    this:CreateQuestNpc(arg1, npcs.Npc21122Data.id, 0)
    actorMgr:CreateActorWithPos("Q7408402EnterTriggerin", "Actor/Gadget/Q7408402EnterTriggerin", 70900002, 0, points.TPos_Q7408402EnterTriggerin.pos, points.TPos_Q7408402EnterTriggerin.rot, true, false, 3)
end

function Quest74084:OnSubFinish7408401(arg1)
    print("OnSubFinish7408401")
end

function Quest74084:OnSubStart7408413(arg1)
    print("OnSubStart7408413")
    this:CreateQuestNpc(arg1, npcs.Npc21122Data.id, 0)
end

function Quest74084:OnSubFinish7408413(arg1)
    print("OnSubFinish7408413")
end

function Quest74084:OnSubStart7408405(arg1)
    print("OnSubStart7408405")
    this:CreateQuestNpc(arg1, npcs.Npc21122Data.id, 0)
    this:RequestInteraction(npcs.Npc21122Data.alias)
end

function Quest74084:OnSubFinish7408405(arg1)
    print("OnSubFinish7408405")
    this:SafeDestroyQuestNpc(npcs.Npc21122Data.alias, 3)
end

function Quest74084:OnSubStart7408407(arg1)
    print("OnSubStart7408407")
end

function Quest74084:OnSubFinish7408407(arg1)
    print("OnSubFinish7408407")
end

function Quest74084:OnSubStart7408408(arg1)
    print("OnSubStart7408408")
    this:CreateQuestNpc(arg1, npcs.Npc21121Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5325Data.id, 0)
    this:RequestInteraction(npcs.Npc5325Data.alias)
end

function Quest74084:OnSubFinish7408408(arg1)
    print("OnSubFinish7408408")
    this:SafeDestroyQuestNpc(npcs.Npc21121Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5325Data.alias, 3)
end

function Quest74084:OnSubStart7408403(arg1)
    print("OnSubStart7408403")
end

function Quest74084:OnSubFinish7408403(arg1)
    print("OnSubFinish7408403")
end

function Quest74084:OnSubStart7408411(arg1)
    print("OnSubStart7408411")
end

function Quest74084:OnSubFinish7408411(arg1)
    print("OnSubFinish7408411")
end

return Quest74084
