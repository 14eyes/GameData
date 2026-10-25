require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40245 = class("Quest40245", QuestActorProxy)
Quest40245.defaultAlias = "Quest40245"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40245:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40245:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4024501"] = self.OnSubStart4024501,
        ["4024502"] = self.OnSubStart4024502,
        ["4024531"] = self.OnSubStart4024531,
        ["4024532"] = self.OnSubStart4024532,
        ["4024529"] = self.OnSubStart4024529,
        ["4024530"] = self.OnSubStart4024530,
        ["4024503"] = self.OnSubStart4024503,
        ["4024504"] = self.OnSubStart4024504,
        ["4024505"] = self.OnSubStart4024505,
        ["4024506"] = self.OnSubStart4024506,
        ["4024507"] = self.OnSubStart4024507,
        ["4024508"] = self.OnSubStart4024508,
        ["4024509"] = self.OnSubStart4024509,
        ["4024510"] = self.OnSubStart4024510,
        ["4024511"] = self.OnSubStart4024511,
        ["4024512"] = self.OnSubStart4024512,
        ["4024533"] = self.OnSubStart4024533,
        ["4024513"] = self.OnSubStart4024513,
        ["4024514"] = self.OnSubStart4024514,
        ["4024515"] = self.OnSubStart4024515,
        ["4024516"] = self.OnSubStart4024516,
        ["4024534"] = self.OnSubStart4024534,
        ["4024517"] = self.OnSubStart4024517,
        ["4024518"] = self.OnSubStart4024518,
        ["4024519"] = self.OnSubStart4024519,
        ["4024520"] = self.OnSubStart4024520,
        ["4024521"] = self.OnSubStart4024521,
        ["4024522"] = self.OnSubStart4024522,
        ["4024523"] = self.OnSubStart4024523,
        ["4024524"] = self.OnSubStart4024524,
        ["4024525"] = self.OnSubStart4024525,
        ["4024526"] = self.OnSubStart4024526,
        ["4024527"] = self.OnSubStart4024527,
        ["4024528"] = self.OnSubStart4024528
    }
end

function Quest40245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4024501"] = self.OnSubFinish4024501,
        ["4024502"] = self.OnSubFinish4024502,
        ["4024531"] = self.OnSubFinish4024531,
        ["4024532"] = self.OnSubFinish4024532,
        ["4024529"] = self.OnSubFinish4024529,
        ["4024530"] = self.OnSubFinish4024530,
        ["4024503"] = self.OnSubFinish4024503,
        ["4024504"] = self.OnSubFinish4024504,
        ["4024505"] = self.OnSubFinish4024505,
        ["4024506"] = self.OnSubFinish4024506,
        ["4024507"] = self.OnSubFinish4024507,
        ["4024508"] = self.OnSubFinish4024508,
        ["4024509"] = self.OnSubFinish4024509,
        ["4024510"] = self.OnSubFinish4024510,
        ["4024511"] = self.OnSubFinish4024511,
        ["4024512"] = self.OnSubFinish4024512,
        ["4024533"] = self.OnSubFinish4024533,
        ["4024513"] = self.OnSubFinish4024513,
        ["4024514"] = self.OnSubFinish4024514,
        ["4024515"] = self.OnSubFinish4024515,
        ["4024516"] = self.OnSubFinish4024516,
        ["4024534"] = self.OnSubFinish4024534,
        ["4024517"] = self.OnSubFinish4024517,
        ["4024518"] = self.OnSubFinish4024518,
        ["4024519"] = self.OnSubFinish4024519,
        ["4024520"] = self.OnSubFinish4024520,
        ["4024521"] = self.OnSubFinish4024521,
        ["4024522"] = self.OnSubFinish4024522,
        ["4024523"] = self.OnSubFinish4024523,
        ["4024524"] = self.OnSubFinish4024524,
        ["4024525"] = self.OnSubFinish4024525,
        ["4024526"] = self.OnSubFinish4024526,
        ["4024527"] = self.OnSubFinish4024527,
        ["4024528"] = self.OnSubFinish4024528
    }
end

function Quest40245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4024507"] = self.OnSubFailed4024507,
        ["4024512"] = self.OnSubFailed4024512,
        ["4024513"] = self.OnSubFailed4024513,
        ["4024514"] = self.OnSubFailed4024514,
        ["4024515"] = self.OnSubFailed4024515,
        ["4024516"] = self.OnSubFailed4024516,
        ["4024518"] = self.OnSubFailed4024518,
        ["4024519"] = self.OnSubFailed4024519,
        ["4024520"] = self.OnSubFailed4024520,
        ["4024521"] = self.OnSubFailed4024521,
        ["4024522"] = self.OnSubFailed4024522,
        ["4024523"] = self.OnSubFailed4024523,
        ["4024524"] = self.OnSubFailed4024524,
        ["4024525"] = self.OnSubFailed4024525,
        ["4024526"] = self.OnSubFailed4024526
    }
end

function Quest40245:Start()
    print("Start")
end

function Quest40245:OnDestroy()
    print("OnDestroy")
end

function Quest40245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40245:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q4024502N1336Trigger")
    this:DestroyNpcTrigger("Q4024503N1336Trigger")
    this:DestroyNpcTrigger("Q4024505N31094Trigger")
    this:DestroyNpcTrigger("Q4024507N1336Trigger")
    this:DestroyNpcTrigger("Q4024513N1336Trigger")
    this:DestroyNpcTrigger("Q4024514N31094Trigger")
    this:DestroyNpcTrigger("Q4024518N1336Trigger")
    this:DestroyNpcTrigger("Q4024520N31094Trigger")
    this:DestroyNpcTrigger("Q4024522N31094Trigger")
    this:DestroyNpcTrigger("Q4024524N31094Trigger")
    this:DestroyNpcTrigger("Q4024526N31094Trigger")
    this:DestroyNpcTrigger("Q4024527N1336Trigger")
    this:DestroyNpcTrigger("Q4024528N1096Trigger")
    this:DestroyNpcTrigger("Q4024529N31094Trigger")
    this:DestroyNpcTrigger("Q4024530N31094Trigger")
    this:DestroyNpcTrigger("Q4024531N1336Trigger")
    this:DestroyNpcTrigger("Q4024532N1336Trigger")
    this:ActorDestroy("Q4024528Trigger", 40245)
    this:ActorDestroy("Q4024504Trigger", 40245)
    this:ActorDestroy("Q4024517Trigger", nil)
    this:ActorDestroy("Q4024523Trigger", 40245)
    this:ActorDestroy("Q4024525Trigger", 40245)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc1336.alias, 20357)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1161)
    this:SafeDestroyQuestNpc(npcs.Npc31020.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc31021.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc31022.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc31023.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 20357)
    this:SafeDestroyQuestNpc(npcs.Npc31094.alias, 1160)
    this:SafeDestroyQuestNpc(npcs.Npc31094.alias, 20357)
    this:SafeDestroyQuestNpc(npcs.Npc31094.alias, 1161)
    this:CancelStoryByQuest(134024502)
    this:CancelStoryByQuest(134024505)
    this:CancelStoryByQuest(134024500)
    this:CancelStoryByQuest(134024501)
    this:CancelStoryByQuest(134024503)
    this:CancelStoryByQuest(134024504)
    this:RecycleAllRes()
end

function Quest40245:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4024528Trigger", 40245)
    this:ActorDestroy("Q4024504Trigger", 40245)
    this:ActorDestroy("Q4024517Trigger", nil)
    this:ActorDestroy("Q4024523Trigger", 40245)
    this:ActorDestroy("Q4024525Trigger", 40245)
end

function Quest40245:ActorDestroy(arg1, arg2)
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

function Quest40245:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40245:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40245:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40245:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40245:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest40245:OnSubStart4024501(arg1)
    print("OnSubStart4024501")
end

function Quest40245:OnSubFinish4024501(arg1)
    print("OnSubFinish4024501")
    this:QuestNarratorTask(datas.NarratorWithId4024501, nil)
    actorMgr:DestroyNpcActorByAlias("Npc107340244")
    actorMgr:DestroyNpcActorByAlias("Npc131840244")
end

function Quest40245:OnSubStart4024502(arg1)
    print("OnSubStart4024502")
    this:NpcCreateWithNpcTrigger(npcs.Npc1336.id, 0, 10, 4024502)
end

function Quest40245:OnSubFinish4024502(arg1)
    print("OnSubFinish4024502")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataNormal, nil, nil, nil)
    this:ClearNarratorTask()
end

function Quest40245:OnSubStart4024531(arg1)
    print("OnSubStart4024531")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024531, 40, true)
end

function Quest40245:OnSubFinish4024531(arg1)
    print("OnSubFinish4024531")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
    this:TransmitPlayerByData(arg1, 2, datas.TransmitDataNormal, nil, nil, nil)
end

function Quest40245:OnSubStart4024532(arg1)
    print("OnSubStart4024532")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024532, 40, true)
end

function Quest40245:OnSubFinish4024532(arg1)
    print("OnSubFinish4024532")
    this:NpcDestroyImmediately(1161, npcs.Npc1336.alias)
end

function Quest40245:OnSubStart4024529(arg1)
    print("OnSubStart4024529")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 17.5, 4024529)
end

function Quest40245:OnSubFinish4024529(arg1)
    print("OnSubFinish4024529")
end

function Quest40245:OnSubStart4024530(arg1)
    print("OnSubStart4024530")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 17.5, 4024530)
end

function Quest40245:OnSubFinish4024530(arg1)
    print("OnSubFinish4024530")
    this:NpcDestroyImmediately(1161, npcs.Npc31094.alias)
end

function Quest40245:OnSubStart4024503(arg1)
    print("OnSubStart4024503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024503, 0, 5, 0, npcs.Npc1336.id)
end

function Quest40245:OnSubFinish4024503(arg1)
    print("OnSubFinish4024503")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
end

function Quest40245:OnSubStart4024504(arg1)
    print("OnSubStart4024504")
    actorMgr:CreateActorWithPos("Q4024504Trigger", "Actor/Gadget/Q4024504Trigger", 70900002, 0, points._Q4024504TriggerPoint_.pos, points._Q4024504TriggerPoint_.rot, true, false, 3, nil, 0, 40245)
end

function Quest40245:OnSubFinish4024504(arg1)
    print("OnSubFinish4024504")
    this:ActorDestroy("Q4024504Trigger", 40245)
end

function Quest40245:OnSubStart4024505(arg1)
    print("OnSubStart4024505")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 12, 4024505)
end

function Quest40245:OnSubFinish4024505(arg1)
    print("OnSubFinish4024505")
    this:NpcDestroyImmediately(3, npcs.Npc31094.alias)
end

function Quest40245:OnSubStart4024506(arg1)
    print("OnSubStart4024506")
end

function Quest40245:OnSubFinish4024506(arg1)
    print("OnSubFinish4024506")
end

function Quest40245:OnSubStart4024507(arg1)
    print("OnSubStart4024507")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024507, 40, true)
end

function Quest40245:OnSubFinish4024507(arg1)
    print("OnSubFinish4024507")
    this:NpcDestroyImmediately(1160, npcs.Npc1336.alias)
end

function Quest40245:OnSubFailed4024507(arg1)
    print("OnSubFailed4024507")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024508(arg1)
    print("OnSubStart4024508")
end

function Quest40245:OnSubFinish4024508(arg1)
    print("OnSubFinish4024508")
    this:NpcDestroyImmediately(1160, npcs.Npc31020.alias)
end

function Quest40245:OnSubStart4024509(arg1)
    print("OnSubStart4024509")
end

function Quest40245:OnSubFinish4024509(arg1)
    print("OnSubFinish4024509")
    this:NpcDestroyImmediately(1160, npcs.Npc31021.alias)
end

function Quest40245:OnSubStart4024510(arg1)
    print("OnSubStart4024510")
end

function Quest40245:OnSubFinish4024510(arg1)
    print("OnSubFinish4024510")
    this:NpcDestroyImmediately(1160, npcs.Npc31022.alias)
end

function Quest40245:OnSubStart4024511(arg1)
    print("OnSubStart4024511")
end

function Quest40245:OnSubFinish4024511(arg1)
    print("OnSubFinish4024511")
    this:NpcDestroyImmediately(1160, npcs.Npc31023.alias)
end

function Quest40245:OnSubStart4024512(arg1)
    print("OnSubStart4024512")
    this:CreateQuestNpc(arg1, npcs.Npc31020.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31021.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31022.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc31023.id, 0, false, 0)
    this:DeployStoryByQuest(134024505)
end

function Quest40245:OnSubFinish4024512(arg1)
    print("OnSubFinish4024512")
    this:NpcDestroyImmediately(1160, npcs.Npc31020.alias)
    this:NpcDestroyImmediately(1160, npcs.Npc31021.alias)
    this:NpcDestroyImmediately(1160, npcs.Npc31022.alias)
    this:NpcDestroyImmediately(1160, npcs.Npc31023.alias)
    this:CancelStoryByQuest(134024505)
end

function Quest40245:OnSubFailed4024512(arg1)
    print("OnSubFailed4024512")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024533(arg1)
    print("OnSubStart4024533")
end

function Quest40245:OnSubFinish4024533(arg1)
    print("OnSubFinish4024533")
end

function Quest40245:OnSubStart4024513(arg1)
    print("OnSubStart4024513")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4024513, 0, 40, 0, npcs.Npc1336.id)
end

function Quest40245:OnSubFinish4024513(arg1)
    print("OnSubFinish4024513")
    this:NpcDestroyImmediately(1160, npcs.Npc1336.alias)
end

function Quest40245:OnSubFailed4024513(arg1)
    print("OnSubFailed4024513")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024514(arg1)
    print("OnSubStart4024514")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 4, 4024514)
end

function Quest40245:OnSubFinish4024514(arg1)
    print("OnSubFinish4024514")
    this:NpcDestroyImmediately(1160, npcs.Npc31094.alias)
end

function Quest40245:OnSubFailed4024514(arg1)
    print("OnSubFailed4024514")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024515(arg1)
    print("OnSubStart4024515")
    this:DeployStoryByQuest(134024502)
end

function Quest40245:OnSubFinish4024515(arg1)
    print("OnSubFinish4024515")
end

function Quest40245:OnSubFailed4024515(arg1)
    print("OnSubFailed4024515")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024516(arg1)
    print("OnSubStart4024516")
    this:ActorDestroy("Q4024517Trigger", nil)
end

function Quest40245:OnSubFinish4024516(arg1)
    print("OnSubFinish4024516")
    this:NpcDestroyImmediately(1160, npcs.Npc1336.alias)
    this:CancelStoryByQuest(134024502)
end

function Quest40245:OnSubFailed4024516(arg1)
    print("OnSubFailed4024516")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024534(arg1)
    print("OnSubStart4024534")
end

function Quest40245:OnSubFinish4024534(arg1)
    print("OnSubFinish4024534")
end

function Quest40245:OnSubStart4024517(arg1)
    print("OnSubStart4024517")
    actorMgr:CreateActorWithPos("Q4024517Trigger", "Actor/Gadget/Q4024517Trigger", 70900002, 0, points._Q4024517TriggerPoint_.pos, points._Q4024517TriggerPoint_.rot, true, false, 1160, nil, 0, 40245)
end

function Quest40245:OnSubFinish4024517(arg1)
    print("OnSubFinish4024517")
    this:ActorDestroy("Q4024517Trigger", nil)
end

function Quest40245:OnSubStart4024518(arg1)
    print("OnSubStart4024518")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024518, 40, true)
end

function Quest40245:OnSubFinish4024518(arg1)
    print("OnSubFinish4024518")
    this:NpcDestroyImmediately(20357, npcs.Npc1336.alias)
end

function Quest40245:OnSubFailed4024518(arg1)
    print("OnSubFailed4024518")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024519(arg1)
    print("OnSubStart4024519")
    this:DeployStoryByQuest(134024500)
    this:DeployStoryByQuest(134024501)
end

function Quest40245:OnSubFinish4024519(arg1)
    print("OnSubFinish4024519")
end

function Quest40245:OnSubFailed4024519(arg1)
    print("OnSubFailed4024519")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024520(arg1)
    print("OnSubStart4024520")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 15, 4024520)
    this:DeployStoryByQuest(134024501)
end

function Quest40245:OnSubFinish4024520(arg1)
    print("OnSubFinish4024520")
    this:CancelStoryByQuest(134024500)
    this:CancelStoryByQuest(134024501)
end

function Quest40245:OnSubFailed4024520(arg1)
    print("OnSubFailed4024520")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024521(arg1)
    print("OnSubStart4024521")
    actorUtils.FinishQuestWithParam({false}, {4024521})
end

function Quest40245:OnSubFinish4024521(arg1)
    print("OnSubFinish4024521")
end

function Quest40245:OnSubFailed4024521(arg1)
    print("OnSubFailed4024521")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024522(arg1)
    print("OnSubStart4024522")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 15, 4024522)
        this:CreateQuestNpc(arg1, npcs.Npc1336.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1336.alias, 40245):SitOnChair(0, false)
    end)
end

function Quest40245:OnSubFinish4024522(arg1)
    print("OnSubFinish4024522")
    this:NpcDestroyWithAfterIntercall(20357, npcs.Npc1336.alias)
    this:NpcDestroyWithAfterIntercall(20357, npcs.Npc31094.alias)
    this:ActionSafeCall(function(arg1)
        this:ClearNpcTriggerByQuestId(4024522)
    end)
end

function Quest40245:OnSubFailed4024522(arg1)
    print("OnSubFailed4024522")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024523(arg1)
    print("OnSubStart4024523")
    this:CreateQuestNpc(arg1, npcs.Npc1318.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q4024523Trigger", "Actor/Gadget/Q4024523Trigger", 70900002, 0, points._Q4024523TriggerPoint_.pos, points._Q4024523TriggerPoint_.rot, true, false, 20357, nil, 0, 40245)
    this:DeployStoryByQuest(134024503)
end

function Quest40245:OnSubFinish4024523(arg1)
    print("OnSubFinish4024523")
    this:ActorDestroy("Q4024523Trigger", 40245)
end

function Quest40245:OnSubFailed4024523(arg1)
    print("OnSubFailed4024523")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024524(arg1)
    print("OnSubStart4024524")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 15, 4024524)
    this:DeployStoryByQuest(134024503)
end

function Quest40245:OnSubFinish4024524(arg1)
    print("OnSubFinish4024524")
    this:NpcDestroyImmediately(20357, npcs.Npc1318.alias)
    this:NpcDestroyImmediately(20357, npcs.Npc31094.alias)
    this:CancelStoryByQuest(134024503)
end

function Quest40245:OnSubFailed4024524(arg1)
    print("OnSubFailed4024524")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024525(arg1)
    print("OnSubStart4024525")
    actorMgr:CreateActorWithPos("Q4024525Trigger", "Actor/Gadget/Q4024525Trigger", 70900002, 0, points._Q4024525TriggerPoint_.pos, points._Q4024525TriggerPoint_.rot, true, false, 20357, nil, 0, 40245)
    this:DeployStoryByQuest(134024504)
end

function Quest40245:OnSubFinish4024525(arg1)
    print("OnSubFinish4024525")
    this:ActorDestroy("Q4024525Trigger", 40245)
end

function Quest40245:OnSubFailed4024525(arg1)
    print("OnSubFailed4024525")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024526(arg1)
    print("OnSubStart4024526")
    this:NpcCreateWithNpcTrigger(npcs.Npc31094.id, 0, 15, 4024526)
    this:DeployStoryByQuest(134024504)
end

function Quest40245:OnSubFinish4024526(arg1)
    print("OnSubFinish4024526")
    this:NpcDestroyImmediately(20357, npcs.Npc31094.alias)
    this:CancelStoryByQuest(134024504)
end

function Quest40245:OnSubFailed4024526(arg1)
    print("OnSubFailed4024526")
    this:RecycleAllRes()
end

function Quest40245:OnSubStart4024527(arg1)
    print("OnSubStart4024527")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1336.id, 0, 4024527, 40, true)
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20357 then
                this:TransmitPlayerByData(arg1, 3, datas.TransmitDataNormal, nil, nil, nil)
            end
        end)
    end)
end

function Quest40245:OnSubFinish4024527(arg1)
    print("OnSubFinish4024527")
    this:NpcDestroyImmediately(1160, npcs.Npc1336.alias)
end

function Quest40245:OnSubStart4024528(arg1)
    print("OnSubStart4024528")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1096.id, 0, 4024528, 40, true)
    this:CreateQuestNpc(arg1, npcs.Npc1336.id, 0, false, 0)
end

function Quest40245:OnSubFinish4024528(arg1)
    print("OnSubFinish4024528")
    this:NpcDestroyImmediately(1161, npcs.Npc1096.alias)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1336.id, 0, false, 0.5, nil)
    this:GetQuestNpcActor(npcs.Npc1336.alias, 40245):SitOnChair(0, false)
    actorMgr:CreateActorWithPos("Q4024528Trigger", "Actor/Gadget/Q4024528Trigger", 70900002, 0, points._Q4024528TriggerPoint_.pos, points._Q4024528TriggerPoint_.rot, true, false, 1161, nil, 0, 40245)
end

return Quest40245
