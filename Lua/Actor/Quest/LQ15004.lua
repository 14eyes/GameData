require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15004 = class("Quest15004", QuestActorProxy)
Quest15004.defaultAlias = "Quest15004"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15004:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500401"] = self.OnSubStart1500401,
        ["1500402"] = self.OnSubStart1500402,
        ["1500415"] = self.OnSubStart1500415,
        ["1500416"] = self.OnSubStart1500416,
        ["1500403"] = self.OnSubStart1500403,
        ["1500404"] = self.OnSubStart1500404,
        ["1500417"] = self.OnSubStart1500417,
        ["1500420"] = self.OnSubStart1500420,
        ["1500405"] = self.OnSubStart1500405,
        ["1500425"] = self.OnSubStart1500425,
        ["1500421"] = self.OnSubStart1500421,
        ["1500407"] = self.OnSubStart1500407,
        ["1500423"] = self.OnSubStart1500423,
        ["1500406"] = self.OnSubStart1500406,
        ["1500419"] = self.OnSubStart1500419,
        ["1500408"] = self.OnSubStart1500408,
        ["1500409"] = self.OnSubStart1500409,
        ["1500422"] = self.OnSubStart1500422,
        ["1500412"] = self.OnSubStart1500412,
        ["1500413"] = self.OnSubStart1500413,
        ["1500424"] = self.OnSubStart1500424,
        ["1500410"] = self.OnSubStart1500410,
        ["1500411"] = self.OnSubStart1500411,
        ["1500414"] = self.OnSubStart1500414,
        ["1500418"] = self.OnSubStart1500418
    }
end

function Quest15004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500401"] = self.OnSubFinish1500401,
        ["1500402"] = self.OnSubFinish1500402,
        ["1500415"] = self.OnSubFinish1500415,
        ["1500416"] = self.OnSubFinish1500416,
        ["1500403"] = self.OnSubFinish1500403,
        ["1500404"] = self.OnSubFinish1500404,
        ["1500417"] = self.OnSubFinish1500417,
        ["1500420"] = self.OnSubFinish1500420,
        ["1500405"] = self.OnSubFinish1500405,
        ["1500425"] = self.OnSubFinish1500425,
        ["1500421"] = self.OnSubFinish1500421,
        ["1500407"] = self.OnSubFinish1500407,
        ["1500423"] = self.OnSubFinish1500423,
        ["1500406"] = self.OnSubFinish1500406,
        ["1500419"] = self.OnSubFinish1500419,
        ["1500408"] = self.OnSubFinish1500408,
        ["1500409"] = self.OnSubFinish1500409,
        ["1500422"] = self.OnSubFinish1500422,
        ["1500412"] = self.OnSubFinish1500412,
        ["1500413"] = self.OnSubFinish1500413,
        ["1500424"] = self.OnSubFinish1500424,
        ["1500410"] = self.OnSubFinish1500410,
        ["1500411"] = self.OnSubFinish1500411,
        ["1500414"] = self.OnSubFinish1500414,
        ["1500418"] = self.OnSubFinish1500418
    }
end

function Quest15004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15004:Start()
    print("Start")
end

function Quest15004:OnDestroy()
    print("OnDestroy")
end

function Quest15004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15004:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1500422 then
        actorUtils.FinishQuestID(false, 1500422)
    elseif arg1 == 1500424 then
        actorUtils.FinishQuestID(false, 1500424)
    end
end

function Quest15004:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueString == "OnSkillAct" then
        print("InvokeOnAbility_TGZ")
        this:QuestNarratorTask(datas.NarratorWithId_1500495, nil)
    else
        if arg1.valueString == "Stunned" then
            print("InvokeOnAbility_BDY")
            this:QuestNarratorTask(datas.NarratorWithId_1500494, nil)
        end
    end
end

function Quest15004:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest15004:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest15004:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15004:OnSubStart1500401(arg1)
    print("OnSubStart1500401")
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500401(arg1)
    print("OnSubFinish1500401")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
end

function Quest15004:OnSubStart1500402(arg1)
    print("OnSubStart1500402")
    this:CreateQuestNpc(arg1, npcs.Npc14145.id, 0, false, 0)
end

function Quest15004:OnSubFinish1500402(arg1)
    print("OnSubFinish1500402")
    this:PlayerEnterDungeonWithData(1296, 1216, 1500402, 1, datas.PlayerEnterDungeonData_1, nil, nil)
    this:DestroyQuestNpcActor(npcs.Npc14145.alias, 3)
end

function Quest15004:OnSubStart1500415(arg1)
    print("OnSubStart1500415")
end

function Quest15004:OnSubFinish1500415(arg1)
    print("OnSubFinish1500415")
end

function Quest15004:OnSubStart1500416(arg1)
    print("OnSubStart1500416")
end

function Quest15004:OnSubFinish1500416(arg1)
    print("OnSubFinish1500416")
end

function Quest15004:OnSubStart1500403(arg1)
    print("OnSubStart1500403")
    this:CreateQuestNpc(arg1, npcs.Npc14156.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500403_GuidePoint", "Actor/Gadget/Q1500403_GuidePoint", 70900002, 0, points.Point1500403.pos, points.Point1500403.rot, true, false, 20230)
end

function Quest15004:OnSubFinish1500403(arg1)
    print("OnSubFinish1500403")
    this:ActorDestroy("Q1500403_GuidePoint")
end

function Quest15004:OnSubStart1500404(arg1)
    print("OnSubStart1500404")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc14145.id, 0, 1500404, 30, false)
    this:CreateQuestNpc(arg1, npcs.Npc14151.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14153.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14154.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14152.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500404(arg1)
    print("OnSubFinish1500404")
end

function Quest15004:OnSubStart1500417(arg1)
    print("OnSubStart1500417")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14145.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14151.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14153.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14154.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14152.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    end)
end

function Quest15004:OnSubFinish1500417(arg1)
    print("OnSubFinish1500417")
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 20230)
end

function Quest15004:OnSubStart1500420(arg1)
    print("OnSubStart1500420")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14151.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14153.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14154.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14152.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc14145.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    end)
end

function Quest15004:OnSubFinish1500420(arg1)
    print("OnSubFinish1500420")
    this:EnterSceneLookCameraByParam(datas.camera_1500420)
end

function Quest15004:OnSubStart1500405(arg1)
    print("OnSubStart1500405")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500405(arg1)
    print("OnSubFinish1500405")
end

function Quest15004:OnSubStart1500425(arg1)
    print("OnSubStart1500425")
end

function Quest15004:OnSubFinish1500425(arg1)
    print("OnSubFinish1500425")
end

function Quest15004:OnSubStart1500421(arg1)
    print("OnSubStart1500421")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500421, 0, 10, 0.5, npcs.Paimon.id)
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500421(arg1)
    print("OnSubFinish1500421")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20230)
end

function Quest15004:OnSubStart1500407(arg1)
    print("OnSubStart1500407")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14459.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500407_GuidePoint", "Actor/Gadget/Q1500407_GuidePoint", 70900002, 0, points.Point1500407.pos, points.Point1500407.rot, true, false, 20230)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500407(arg1)
    print("OnSubFinish1500407")
    this:ActorDestroy("Q1500407_GuidePoint")
    this:QuestNarratorTask(datas.NarratorWithId_1500498, nil)
end

function Quest15004:OnSubStart1500423(arg1)
    print("OnSubStart1500423")
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500423Trigger", "Actor/Gadget/Q1500423Trigger", 70900002, 0, points.Point1500423.pos, points.Point1500423.rot, true, false, 20230)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500423(arg1)
    print("OnSubFinish1500423")
    this:ActorDestroy("Q1500423Trigger")
end

function Quest15004:OnSubStart1500406(arg1)
    print("OnSubStart1500406")
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500406(arg1)
    print("OnSubFinish1500406")
end

function Quest15004:OnSubStart1500419(arg1)
    print("OnSubStart1500419")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14145.alias, 15004):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500419(arg1)
    print("OnSubFinish1500419")
end

function Quest15004:OnSubStart1500408(arg1)
    print("OnSubStart1500408")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500408(arg1)
    print("OnSubFinish1500408")
    this:SafeDestroyQuestNpc(npcs.Npc14145.alias, 20230)
end

function Quest15004:OnSubStart1500409(arg1)
    print("OnSubStart1500409")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1500409, 0, 50, 0, npcs.Npc1088.id)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14459.alias, 15004):DoFreeStyle(4, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500409(arg1)
    print("OnSubFinish1500409")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20230)
    this:SafeDestroyQuestNpc(npcs.Npc14459.alias, 20230)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1500497, nil)
    end)
end

function Quest15004:OnSubStart1500422(arg1)
    print("OnSubStart1500422")
end

function Quest15004:OnSubFinish1500422(arg1)
    print("OnSubFinish1500422")
end

function Quest15004:OnSubStart1500412(arg1)
    print("OnSubStart1500412")
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500412(arg1)
    print("OnSubFinish1500412")
end

function Quest15004:OnSubStart1500413(arg1)
    print("OnSubStart1500413")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1500413, 0, 50, 0.5, npcs.Npc1088.id)
    this:GetQuestNpcActor(npcs.Npc14151.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14153.alias, 15004):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14154.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14152.alias, 15004):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14156.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500413(arg1)
    print("OnSubFinish1500413")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20230)
    this:SafeDestroyQuestNpc(npcs.Npc14151.alias, 20230)
    this:SafeDestroyQuestNpc(npcs.Npc14153.alias, 20230)
    this:SafeDestroyQuestNpc(npcs.Npc14154.alias, 20230)
    this:SafeDestroyQuestNpc(npcs.Npc14152.alias, 20230)
    this:DestroyQuestNpcActor(npcs.Npc14156.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData01, nil, nil, nil)
end

function Quest15004:OnSubStart1500424(arg1)
    print("OnSubStart1500424")
end

function Quest15004:OnSubFinish1500424(arg1)
    print("OnSubFinish1500424")
end

function Quest15004:OnSubStart1500410(arg1)
    print("OnSubStart1500410")
    this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 15004):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q1500410_Narrator", "Actor/Gadget/Q1500410_Narrator", 70900002, 0, points.Q1500410_Narrator.pos, points.Q1500410_Narrator.rot, true, false, 3)
end

function Quest15004:OnSubFinish1500410(arg1)
    print("OnSubFinish1500410")
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 3)
    this:ActorDestroy("Q1500410_Narrator")
    this:ClearNarratorTask()
end

function Quest15004:OnSubStart1500411(arg1)
    print("OnSubStart1500411")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 15, 1500411)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 15004):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest15004:OnSubFinish1500411(arg1)
    print("OnSubFinish1500411")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData04, nil, nil, nil)
end

function Quest15004:OnSubStart1500414(arg1)
    print("OnSubStart1500414")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc14277.id, 0, 1500414, 15, false)
end

function Quest15004:OnSubFinish1500414(arg1)
    print("OnSubFinish1500414")
    this:SafeDestroyQuestNpc(npcs.Npc14277.alias, 3)
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData05, nil, nil, nil)
end

function Quest15004:OnSubStart1500418(arg1)
    print("OnSubStart1500418")
    actorMgr:CreateActorWithPos("Q1500418_finish", "Actor/Gadget/Q1500418_finish", 70900002, 0, points.Q1500418_finish.pos, points.Q1500418_finish.rot, true, false, 3)
end

function Quest15004:OnSubFinish1500418(arg1)
    print("OnSubFinish1500418")
    this:ActorDestroy("Q1500418_finish")
end

return Quest15004
