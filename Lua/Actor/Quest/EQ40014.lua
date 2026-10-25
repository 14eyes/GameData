require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40014 = class("Quest40014", QuestActorProxy)
Quest40014.defaultAlias = "Quest40014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001420"] = self.OnSubStart4001420,
        ["4001401"] = self.OnSubStart4001401,
        ["4001402"] = self.OnSubStart4001402,
        ["4001404"] = self.OnSubStart4001404,
        ["4001405"] = self.OnSubStart4001405,
        ["4001406"] = self.OnSubStart4001406,
        ["4001403"] = self.OnSubStart4001403,
        ["4001407"] = self.OnSubStart4001407,
        ["4001415"] = self.OnSubStart4001415,
        ["4001408"] = self.OnSubStart4001408,
        ["4001409"] = self.OnSubStart4001409,
        ["4001410"] = self.OnSubStart4001410,
        ["4001411"] = self.OnSubStart4001411,
        ["4001412"] = self.OnSubStart4001412,
        ["4001423"] = self.OnSubStart4001423,
        ["4001424"] = self.OnSubStart4001424,
        ["4001425"] = self.OnSubStart4001425,
        ["4001427"] = self.OnSubStart4001427,
        ["4001421"] = self.OnSubStart4001421,
        ["4001413"] = self.OnSubStart4001413,
        ["4001422"] = self.OnSubStart4001422,
        ["4001414"] = self.OnSubStart4001414,
        ["4001426"] = self.OnSubStart4001426,
        ["4001416"] = self.OnSubStart4001416,
        ["4001417"] = self.OnSubStart4001417,
        ["4001418"] = self.OnSubStart4001418,
        ["4001419"] = self.OnSubStart4001419
    }
end

function Quest40014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001420"] = self.OnSubFinish4001420,
        ["4001401"] = self.OnSubFinish4001401,
        ["4001402"] = self.OnSubFinish4001402,
        ["4001404"] = self.OnSubFinish4001404,
        ["4001405"] = self.OnSubFinish4001405,
        ["4001406"] = self.OnSubFinish4001406,
        ["4001403"] = self.OnSubFinish4001403,
        ["4001407"] = self.OnSubFinish4001407,
        ["4001415"] = self.OnSubFinish4001415,
        ["4001408"] = self.OnSubFinish4001408,
        ["4001409"] = self.OnSubFinish4001409,
        ["4001410"] = self.OnSubFinish4001410,
        ["4001411"] = self.OnSubFinish4001411,
        ["4001412"] = self.OnSubFinish4001412,
        ["4001423"] = self.OnSubFinish4001423,
        ["4001424"] = self.OnSubFinish4001424,
        ["4001425"] = self.OnSubFinish4001425,
        ["4001427"] = self.OnSubFinish4001427,
        ["4001421"] = self.OnSubFinish4001421,
        ["4001413"] = self.OnSubFinish4001413,
        ["4001422"] = self.OnSubFinish4001422,
        ["4001414"] = self.OnSubFinish4001414,
        ["4001426"] = self.OnSubFinish4001426,
        ["4001416"] = self.OnSubFinish4001416,
        ["4001417"] = self.OnSubFinish4001417,
        ["4001418"] = self.OnSubFinish4001418,
        ["4001419"] = self.OnSubFinish4001419
    }
end

function Quest40014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001420"] = self.OnSubFailed4001420,
        ["4001401"] = self.OnSubFailed4001401,
        ["4001402"] = self.OnSubFailed4001402,
        ["4001404"] = self.OnSubFailed4001404,
        ["4001405"] = self.OnSubFailed4001405,
        ["4001406"] = self.OnSubFailed4001406,
        ["4001403"] = self.OnSubFailed4001403,
        ["4001407"] = self.OnSubFailed4001407,
        ["4001415"] = self.OnSubFailed4001415,
        ["4001408"] = self.OnSubFailed4001408,
        ["4001409"] = self.OnSubFailed4001409,
        ["4001410"] = self.OnSubFailed4001410,
        ["4001411"] = self.OnSubFailed4001411,
        ["4001412"] = self.OnSubFailed4001412,
        ["4001423"] = self.OnSubFailed4001423,
        ["4001424"] = self.OnSubFailed4001424,
        ["4001425"] = self.OnSubFailed4001425,
        ["4001427"] = self.OnSubFailed4001427,
        ["4001421"] = self.OnSubFailed4001421,
        ["4001413"] = self.OnSubFailed4001413,
        ["4001422"] = self.OnSubFailed4001422,
        ["4001414"] = self.OnSubFailed4001414,
        ["4001426"] = self.OnSubFailed4001426,
        ["4001416"] = self.OnSubFailed4001416,
        ["4001417"] = self.OnSubFailed4001417,
        ["4001418"] = self.OnSubFailed4001418,
        ["4001419"] = self.OnSubFailed4001419
    }
end

function Quest40014:Start()
    print("Start")
end

function Quest40014:OnDestroy()
    print("OnDestroy")
end

function Quest40014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2103Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2068Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10427Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10258Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10426Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2308Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2041Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710430Data.alias)
    actorMgr:DestroyEntityActor(datas.Q4001406Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001416Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001420Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001407Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001413Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001423Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001410Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001402Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001405Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001419Trigger_.alias, 3, false)
    self:UnSpawn(gadgets.Gadget70710175Data.alias)
    self:UnSpawn(gadgets.Gadget70710175Data1.alias)
    self:UnSpawn(gadgets.Gadget70710542Data.alias)
    self:LightNotifyTo(npcs.Npc2103Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2068Data.alias, 0, true)
end

function Quest40014:PaimonDis()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(npcs.PaimonData.alias)
        if actor ~= nil then
            if actor.uActor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40014:Create13xlkq()
    print("Create13xlkq")
    self:CreateQuestNpcById(4001413, npcs.XianglingData.id, 1)
    self:CreateQuestNpcById(4001413, npcs.Npc1016Data.id, 2)
end

function Quest40014:Create14xl()
    print("Create14xl")
    self:CreateQuestNpcById(4001414, npcs.XianglingData.id, 1)
end

function Quest40014:Create18kq()
    print("Create18kq")
    self:CreateQuestNpcById(4001418, npcs.Npc1016Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40014:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001424)
    elseif arg1 == 2 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001425)
    elseif arg1 == 3 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001426)
    elseif arg1 == 4 then
        self:SpawnGadgetById(4001401, gadgets.Gadget70710175Data.id, 1)
        self:SpawnGadgetById(4001401, gadgets.Gadget70710175Data.id, 2)
        self:SpawnGadgetById(4001401, gadgets.Gadget70710542Data.id, 3)
    elseif arg1 == 5 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001427)
    end
end

function Quest40014:OnSubStart4001420(arg1)
    print("OnSubStart4001420")
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q4001420Trigger_.alias, datas.Q4001420Trigger_.script, datas.Q4001420Trigger_.id, 0, datas.Q4001420Trigger_.point.pos, datas.Q4001420Trigger_.point.rot, true, false, 3)
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest40014:OnSubFinish4001420(arg1)
    print("OnSubFinish4001420")
end

function Quest40014:OnSubFailed4001420(arg1)
    print("OnSubFailed4001420")
end

function Quest40014:OnSubStart4001401(arg1)
    print("OnSubStart4001401")
    self:RequestInteraction(npcs.XianglingData.alias)
    self:UnSpawn(gadgets.Gadget70710175Data.alias)
    self:UnSpawn(gadgets.Gadget70710175Data1.alias)
    self:UnSpawn(gadgets.Gadget70710542Data.alias)
end

function Quest40014:OnSubFinish4001401(arg1)
    print("OnSubFinish4001401")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2045Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710175Data.alias)
    self:UnSpawn(gadgets.Gadget70710175Data1.alias)
    self:UnSpawn(gadgets.Gadget70710542Data.alias)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001401(arg1)
    print("OnSubFailed4001401")
end

function Quest40014:OnSubStart4001402(arg1)
    print("OnSubStart4001402")
    self:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q4001402Trigger_.alias, datas.Q4001402Trigger_.script, datas.Q4001402Trigger_.id, 0, datas.Q4001402Trigger_.point.pos, datas.Q4001402Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001402(arg1)
    print("OnSubFinish4001402")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001402(arg1)
    print("OnSubFailed4001402")
end

function Quest40014:OnSubStart4001404(arg1)
    print("OnSubStart4001404")
    self:CreateQuestNpc(arg1, npcs.Npc10233Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10234Data.id, 3)
    self:NotifyTo(npcs.Npc2103Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2068Data.alias, 1, true)
end

function Quest40014:OnSubFinish4001404(arg1)
    print("OnSubFinish4001404")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001404(arg1)
    print("OnSubFailed4001404")
end

function Quest40014:OnSubStart4001405(arg1)
    print("OnSubStart4001405")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1171, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc1031Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2103Data.alias, 1, true)
    self:NotifyTo(npcs.Npc2068Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q4001405Trigger_.alias, datas.Q4001405Trigger_.script, datas.Q4001405Trigger_.id, 0, datas.Q4001405Trigger_.point.pos, datas.Q4001405Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001405(arg1)
    print("OnSubFinish4001405")
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1031Data.alias):EnableHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10233Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10234Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001405(arg1)
    print("OnSubFailed4001405")
end

function Quest40014:OnSubStart4001406(arg1)
    print("OnSubStart4001406")
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 3)
    self:LightNotifyTo(npcs.Npc2103Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc2068Data.alias, 0, true)
    actorMgr:CreateActorWithPos(datas.Q4001406Trigger_.alias, datas.Q4001406Trigger_.script, datas.Q4001406Trigger_.id, 0, datas.Q4001406Trigger_.point.pos, datas.Q4001406Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001406(arg1)
    print("OnSubFinish4001406")
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1031Data.alias):EnableHeadCtrl(true)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
end

function Quest40014:OnSubFailed4001406(arg1)
    print("OnSubFailed4001406")
end

function Quest40014:OnSubStart4001403(arg1)
    print("OnSubStart4001403")
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 3)
end

function Quest40014:OnSubFinish4001403(arg1)
    print("OnSubFinish4001403")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2306Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001403(arg1)
    print("OnSubFailed4001403")
end

function Quest40014:OnSubStart4001407(arg1)
    print("OnSubStart4001407")
    self:CreateQuestNpc(arg1, npcs.Npc10427Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10427Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q4001407Trigger_.alias, datas.Q4001407Trigger_.script, datas.Q4001407Trigger_.id, 0, datas.Q4001407Trigger_.point.pos, datas.Q4001407Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001407(arg1)
    print("OnSubFinish4001407")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest40014:OnSubFailed4001407(arg1)
    print("OnSubFailed4001407")
end

function Quest40014:OnSubStart4001415(arg1)
    print("OnSubStart4001415")
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
end

function Quest40014:OnSubFinish4001415(arg1)
    print("OnSubFinish4001415")
    self:GetQuestNpcActor(npcs.Npc10427Data.alias):DoFreeStateTrigger()
end

function Quest40014:OnSubFailed4001415(arg1)
    print("OnSubFailed4001415")
end

function Quest40014:OnSubStart4001408(arg1)
    print("OnSubStart4001408")
    self:GetQuestNpcActor(npcs.Npc10427Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
end

function Quest40014:OnSubFinish4001408(arg1)
    print("OnSubFinish4001408")
    self:GetQuestNpcActor(npcs.Npc10427Data.alias):DoFreeStateTrigger()
end

function Quest40014:OnSubFailed4001408(arg1)
    print("OnSubFailed4001408")
end

function Quest40014:OnSubStart4001409(arg1)
    print("OnSubStart4001409")
    self:NotifyTo(npcs.Npc2308Data.alias, 1, true)
end

function Quest40014:OnSubFinish4001409(arg1)
    print("OnSubFinish4001409")
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1041Data.alias):EnableHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10427Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001409(arg1)
    print("OnSubFailed4001409")
end

function Quest40014:OnSubStart4001410(arg1)
    print("OnSubStart4001410")
    self:CreateQuestNpc(arg1, npcs.Npc2204Data.id, 3)
    self:LightNotifyTo(npcs.Npc2308Data.alias, 0, true)
    actorMgr:CreateActorWithPos(datas.Q4001410Trigger_.alias, datas.Q4001410Trigger_.script, datas.Q4001410Trigger_.id, 0, datas.Q4001410Trigger_.point.pos, datas.Q4001410Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001410(arg1)
    print("OnSubFinish4001410")
    self:GetQuestNpcActor(npcs.Npc1041Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc10045Data.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.XianglingData.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):EnableHeadCtrl(false)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1041Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001410(arg1)
    print("OnSubFailed4001410")
end

function Quest40014:OnSubStart4001411(arg1)
    print("OnSubStart4001411")
    self:CreateQuestNpc(arg1, npcs.Npc2204Data.id, 1)
    self:GetQuestNpcActor(npcs.XianglingData.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):EnableHeadCtrl(false)
end

function Quest40014:OnSubFinish4001411(arg1)
    print("OnSubFinish4001411")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
    self:GetQuestNpcActor(npcs.XianglingData.alias):EnableHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):EnableHeadCtrl(true)
end

function Quest40014:OnSubFailed4001411(arg1)
    print("OnSubFailed4001411")
end

function Quest40014:OnSubStart4001412(arg1)
    print("OnSubStart4001412")
end

function Quest40014:OnSubFinish4001412(arg1)
    print("OnSubFinish4001412")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001412(arg1)
    print("OnSubFailed4001412")
end

function Quest40014:OnSubStart4001423(arg1)
    print("OnSubStart4001423")
    globalActor:LeaveWeather()
    actorMgr:CreateActorWithPos(datas.Q4001423Trigger_.alias, datas.Q4001423Trigger_.script, datas.Q4001423Trigger_.id, 0, datas.Q4001423Trigger_.point.pos, datas.Q4001423Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001423(arg1)
    print("OnSubFinish4001423")
end

function Quest40014:OnSubFailed4001423(arg1)
    print("OnSubFailed4001423")
end

function Quest40014:OnSubStart4001424(arg1)
    print("OnSubStart4001424")
end

function Quest40014:OnSubFinish4001424(arg1)
    print("OnSubFinish4001424")
end

function Quest40014:OnSubFailed4001424(arg1)
    print("OnSubFailed4001424")
end

function Quest40014:OnSubStart4001425(arg1)
    print("OnSubStart4001425")
end

function Quest40014:OnSubFinish4001425(arg1)
    print("OnSubFinish4001425")
end

function Quest40014:OnSubFailed4001425(arg1)
    print("OnSubFailed4001425")
end

function Quest40014:OnSubStart4001427(arg1)
    print("OnSubStart4001427")
end

function Quest40014:OnSubFinish4001427(arg1)
    print("OnSubFinish4001427")
end

function Quest40014:OnSubFailed4001427(arg1)
    print("OnSubFailed4001427")
end

function Quest40014:OnSubStart4001421(arg1)
    print("OnSubStart4001421")
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 3)
    self:RequestInteraction(npcs.PaimonData.alias)
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
end

function Quest40014:OnSubFinish4001421(arg1)
    print("OnSubFinish4001421")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
    globalActor:LeaveWeather()
end

function Quest40014:OnSubFailed4001421(arg1)
    print("OnSubFailed4001421")
end

function Quest40014:OnSubStart4001413(arg1)
    print("OnSubStart4001413")
    self:GetQuestNpcActor(npcs.XianglingData.alias):DoFreeStyle(1171, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos(datas.Q4001413Trigger_.alias, datas.Q4001413Trigger_.script, datas.Q4001413Trigger_.id, 0, datas.Q4001413Trigger_.point.pos, datas.Q4001413Trigger_.point.rot, true, false, 3)
    self:CallDelay(2, self.Create13xlkq)
end

function Quest40014:OnSubFinish4001413(arg1)
    print("OnSubFinish4001413")
end

function Quest40014:OnSubFailed4001413(arg1)
    print("OnSubFailed4001413")
end

function Quest40014:OnSubStart4001422(arg1)
    print("OnSubStart4001422")
end

function Quest40014:OnSubFinish4001422(arg1)
    print("OnSubFinish4001422")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001422(arg1)
    print("OnSubFailed4001422")
end

function Quest40014:OnSubStart4001414(arg1)
    print("OnSubStart4001414")
    self:NotifyTo(npcs.Npc2041Data.alias, 1, true)
    self:CallDelay(2, self.Create14xl)
    actorMgr:CreateActorWithPos(datas.Q4001414Trigger_.alias, datas.Q4001414Trigger_.script, datas.Q4001414Trigger_.id, 0, datas.Q4001414Trigger_.point.pos, datas.Q4001414Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001414(arg1)
    print("OnSubFinish4001414")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10258Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001414(arg1)
    print("OnSubFailed4001414")
end

function Quest40014:OnSubStart4001426(arg1)
    print("OnSubStart4001426")
    self:NotifyTo(npcs.Npc2041Data.alias, 1, true)
end

function Quest40014:OnSubFinish4001426(arg1)
    print("OnSubFinish4001426")
end

function Quest40014:OnSubFailed4001426(arg1)
    print("OnSubFailed4001426")
end

function Quest40014:OnSubStart4001416(arg1)
    print("OnSubStart4001416")
    self:CreateQuestNpc(arg1, npcs.Npc2093Data.id, 1)
    self:LightNotifyTo(npcs.Npc2041Data.alias, 0, true)
    actorMgr:CreateActorWithPos(datas.Q4001416Trigger_.alias, datas.Q4001416Trigger_.script, datas.Q4001416Trigger_.id, 0, datas.Q4001416Trigger_.point.pos, datas.Q4001416Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001416(arg1)
    print("OnSubFinish4001416")
end

function Quest40014:OnSubFailed4001416(arg1)
    print("OnSubFailed4001416")
end

function Quest40014:OnSubStart4001417(arg1)
    print("OnSubStart4001417")
    self:RequestInteraction(npcs.Npc2093Data.alias)
end

function Quest40014:OnSubFinish4001417(arg1)
    print("OnSubFinish4001417")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10426Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001417(arg1)
    print("OnSubFailed4001417")
end

function Quest40014:OnSubStart4001418(arg1)
    print("OnSubStart4001418")
    self.CallDelay(self, 2, function()
        self:Create18kq()
    end)

    self.ActionSafeCall(self, function()
        self:CallDelay(0.4, function()
            print("yincang pinglaolao")
            self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
        end)
    end)

    actorMgr:CreateActorWithPos(datas.Q4001419Trigger_.alias, datas.Q4001419Trigger_.script, datas.Q4001419Trigger_.id, 0, datas.Q4001419Trigger_.point.pos, datas.Q4001419Trigger_.point.rot, true, false, 3)
end

function Quest40014:OnSubFinish4001418(arg1)
    print("OnSubFinish4001418")
end

function Quest40014:OnSubFailed4001418(arg1)
    print("OnSubFailed4001418")
end

function Quest40014:OnSubStart4001419(arg1)
    print("OnSubStart4001419")
    self:NotifyTo(npcs.Npc2093Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc1016Data.alias)
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest40014:OnSubFinish4001419(arg1)
    print("OnSubFinish4001419")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:PaimonDis()
end

function Quest40014:OnSubFailed4001419(arg1)
    print("OnSubFailed4001419")
end

return Quest40014
