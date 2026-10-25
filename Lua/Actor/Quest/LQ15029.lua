require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15029 = class("Quest15029", QuestActorProxy)
Quest15029.defaultAlias = "Quest15029"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest15029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest15029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502901"] = self.OnSubStart1502901,
        ["1502902"] = self.OnSubStart1502902,
        ["1502903"] = self.OnSubStart1502903,
        ["1502904"] = self.OnSubStart1502904,
        ["1502906"] = self.OnSubStart1502906,
        ["1502907"] = self.OnSubStart1502907,
        ["1502905"] = self.OnSubStart1502905,
        ["1502908"] = self.OnSubStart1502908
    }
end

function Quest15029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502901"] = self.OnSubFinish1502901,
        ["1502902"] = self.OnSubFinish1502902,
        ["1502903"] = self.OnSubFinish1502903,
        ["1502904"] = self.OnSubFinish1502904,
        ["1502906"] = self.OnSubFinish1502906,
        ["1502907"] = self.OnSubFinish1502907,
        ["1502905"] = self.OnSubFinish1502905,
        ["1502908"] = self.OnSubFinish1502908
    }
end

function Quest15029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15029:Start()
    print("Start")
end

function Quest15029:OnDestroy()
    print("OnDestroy")
end

function Quest15029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15029:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1201)
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15090.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14652.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15095.alias, 3)
    this:LightNotifyTo(npcs.Npc6250.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6251.alias, 0, true)
    this:DestroyNpcTrigger("Q1502901N1096Trigger")
    this:DestroyNpcTrigger("Q1502902N1096Trigger")
    this:DestroyNpcTrigger("Q1502904N14918Trigger")
end

function Quest15029:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1502906 then
        actorUtils.FinishQuestID(false, 1502906)
    elseif arg1 == 1502907 then
        actorUtils.FinishQuestID(false, 1502907)
    end
end

function Quest15029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15029:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15029:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15029:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15029:OnSubStart1502901(arg1)
    print("OnSubStart1502901")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502901, 0, 38, 1, npcs.Npc1096.id)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14647.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15029):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15090.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15090.alias, 15029):DoFreeStyle(6, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15091.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15092.id, arg1)
    this:DailyNpcSafeHideSelf(npcs.Npc6249.alias, true, 1)
    this:CreateLocalGadget(datas.Gadget73029032_Chair, "1", {x = -4.569, y = 0.048, z = 20.526}, {x = 0, y = 180, z = 0}, 1201, nil, nil, true, 0, true)
    this:CreateLocalGadget(73029026, "1", {x = -17.749, y = -1.327, z = 25.016}, {x = 0, y = 0, z = 0}, 1201, nil, nil, true, 0, true)
    this:CreateLocalGadget(73029004, "1", {x = -36.788, y = -3.512, z = 34.792}, {x = 0, y = 90.408, z = 0}, 1201, nil, nil, true, 0, true)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15090.alias, 15029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15091.alias, 15029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15092.alias, 15029):DisableInteeHeadCtrl(true)
end

function Quest15029:OnSubFinish1502901(arg1)
    print("OnSubFinish1502901")
    this:NpcDestroyImmediately(1201, npcs.Npc1096.alias)
    this:NpcDestroyImmediately(3, npcs.Npc14647.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15090.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15091.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15092.alias)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_15029, 4, nil, nil, nil)
    this:RemoveLocalGadget(datas.Gadget73029032_Chair, "1")
    this:RemoveLocalGadget(73029026, "1")
    this:RemoveLocalGadget(73029004, "1")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15090.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15091.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15092.alias, 15029):DisableInteeHeadCtrl(false)
end

function Quest15029:OnSubStart1502902(arg1)
    print("OnSubStart1502902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502902, 0, 20, 1, npcs.Npc1096.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6249.alias, true, 1)
end

function Quest15029:OnSubFinish1502902(arg1)
    print("OnSubFinish1502902")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:LightNotifyTo(npcs.Npc6249.alias, 0, true)
end

function Quest15029:OnSubStart1502903(arg1)
    print("OnSubStart1502903")
end

function Quest15029:OnSubFinish1502903(arg1)
    print("OnSubFinish1502903")
end

function Quest15029:OnSubStart1502904(arg1)
    print("OnSubStart1502904")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502904, 0, 20, 1, npcs.Npc14918.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6250.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
end

function Quest15029:OnSubFinish1502904(arg1)
    print("OnSubFinish1502904")
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 3)
    this:LightNotifyTo(npcs.Npc6250.alias, 0, true)
    this:LightNotifyTo(npcs.Npc6251.alias, 0, true)
end

function Quest15029:OnSubStart1502906(arg1)
    print("OnSubStart1502906")
end

function Quest15029:OnSubFinish1502906(arg1)
    print("OnSubFinish1502906")
end

function Quest15029:OnSubStart1502907(arg1)
    print("OnSubStart1502907")
end

function Quest15029:OnSubFinish1502907(arg1)
    print("OnSubFinish1502907")
end

function Quest15029:OnSubStart1502905(arg1)
    print("OnSubStart1502905")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15018.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14654.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14653.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14653.alias, 15029):DoFreeStyle(1230, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14652.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14652.alias, 15029):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:DailyNpcSafeHideSelf(npcs.Npc6251.alias, true, 1)
        this:CreateQuestNpc(arg1, npcs.Npc15093.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15093.alias, 15029):DoFreeStyle(1050, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc15094.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15094.alias, 15029):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc15095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15095.alias, 15029):DoFreeStyle(1050, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14654.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15018.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14653.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14652.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15093.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15094.alias, 15029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15095.alias, 15029):DisableInteeHeadCtrl(true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 15029):SitOnChair(0, false)
end

function Quest15029:OnSubFinish1502905(arg1)
    print("OnSubFinish1502905")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15018.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14654.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14653.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14652.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15095.alias, 3)
    this:LightNotifyTo(npcs.Npc6251.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc14654.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15018.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14653.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14652.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15093.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15094.alias, 15029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc15095.alias, 15029):DisableInteeHeadCtrl(false)
end

function Quest15029:OnSubStart1502908(arg1)
    print("OnSubStart1502908")
    actorUtils.FinishQuestID(false, 1502908)
end

function Quest15029:OnSubFinish1502908(arg1)
    print("OnSubFinish1502908")
end

return Quest15029
