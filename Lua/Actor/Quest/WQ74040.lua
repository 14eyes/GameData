require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74040 = class("Quest74040", QuestActorProxy)
Quest74040.defaultAlias = "Quest74040"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74040:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404001"] = self.OnSubStart7404001,
        ["7404002"] = self.OnSubStart7404002,
        ["7404003"] = self.OnSubStart7404003,
        ["7404023"] = self.OnSubStart7404023,
        ["7404022"] = self.OnSubStart7404022,
        ["7404021"] = self.OnSubStart7404021,
        ["7404026"] = self.OnSubStart7404026,
        ["7404007"] = self.OnSubStart7404007,
        ["7404027"] = self.OnSubStart7404027,
        ["7404029"] = self.OnSubStart7404029,
        ["7404008"] = self.OnSubStart7404008,
        ["7404004"] = self.OnSubStart7404004,
        ["7404005"] = self.OnSubStart7404005,
        ["7404009"] = self.OnSubStart7404009,
        ["7404010"] = self.OnSubStart7404010,
        ["7404024"] = self.OnSubStart7404024,
        ["7404011"] = self.OnSubStart7404011,
        ["7404006"] = self.OnSubStart7404006,
        ["7404020"] = self.OnSubStart7404020,
        ["7404025"] = self.OnSubStart7404025,
        ["7404012"] = self.OnSubStart7404012,
        ["7404013"] = self.OnSubStart7404013,
        ["7404014"] = self.OnSubStart7404014,
        ["7404015"] = self.OnSubStart7404015,
        ["7404016"] = self.OnSubStart7404016,
        ["7404028"] = self.OnSubStart7404028,
        ["7404017"] = self.OnSubStart7404017,
        ["7404018"] = self.OnSubStart7404018,
        ["7404019"] = self.OnSubStart7404019
    }
end

function Quest74040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404001"] = self.OnSubFinish7404001,
        ["7404002"] = self.OnSubFinish7404002,
        ["7404003"] = self.OnSubFinish7404003,
        ["7404023"] = self.OnSubFinish7404023,
        ["7404022"] = self.OnSubFinish7404022,
        ["7404021"] = self.OnSubFinish7404021,
        ["7404026"] = self.OnSubFinish7404026,
        ["7404007"] = self.OnSubFinish7404007,
        ["7404027"] = self.OnSubFinish7404027,
        ["7404029"] = self.OnSubFinish7404029,
        ["7404008"] = self.OnSubFinish7404008,
        ["7404004"] = self.OnSubFinish7404004,
        ["7404005"] = self.OnSubFinish7404005,
        ["7404009"] = self.OnSubFinish7404009,
        ["7404010"] = self.OnSubFinish7404010,
        ["7404024"] = self.OnSubFinish7404024,
        ["7404011"] = self.OnSubFinish7404011,
        ["7404006"] = self.OnSubFinish7404006,
        ["7404020"] = self.OnSubFinish7404020,
        ["7404025"] = self.OnSubFinish7404025,
        ["7404012"] = self.OnSubFinish7404012,
        ["7404013"] = self.OnSubFinish7404013,
        ["7404014"] = self.OnSubFinish7404014,
        ["7404015"] = self.OnSubFinish7404015,
        ["7404016"] = self.OnSubFinish7404016,
        ["7404028"] = self.OnSubFinish7404028,
        ["7404017"] = self.OnSubFinish7404017,
        ["7404018"] = self.OnSubFinish7404018,
        ["7404019"] = self.OnSubFinish7404019
    }
end

function Quest74040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7404001"] = self.OnSubFailed7404001}
end

function Quest74040:Start()
    print("Start")
end

function Quest74040:OnDestroy()
    print("OnDestroy")
end

function Quest74040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74040:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74040:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74040:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74040:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7404007)
    end
end

function Quest74040:OnSubStart7404001(arg1)
    print("OnSubStart7404001")
    this:CreateQuestNpc(arg1, npcs.Npc5320Data.id, 0)
end

function Quest74040:OnSubFinish7404001(arg1)
    print("OnSubFinish7404001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5320Data.alias)
end

function Quest74040:OnSubFailed7404001(arg1)
    print("OnSubFailed7404001")
    this:DestroyQuestNpcActor(npcs.Npc5320Data.alias, 3)
end

function Quest74040:OnSubStart7404002(arg1)
    print("OnSubStart7404002")
    this:CreateQuestNpc(arg1, npcs.Npc21070Data.id, 0)
    actorMgr:CreateActorWithPos("Q7404002Trigger", "Actor/Gadget/Q7404002Trigger", 70900002, 0, {x = 2868.063, y = 374.837, z = 4432.276}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74040:OnSubFinish7404002(arg1)
    print("OnSubFinish7404002")
end

function Quest74040:OnSubStart7404003(arg1)
    print("OnSubStart7404003")
end

function Quest74040:OnSubFinish7404003(arg1)
    print("OnSubFinish7404003")
end

function Quest74040:OnSubStart7404023(arg1)
    print("OnSubStart7404023")
end

function Quest74040:OnSubFinish7404023(arg1)
    print("OnSubFinish7404023")
end

function Quest74040:OnSubStart7404022(arg1)
    print("OnSubStart7404022")
end

function Quest74040:OnSubFinish7404022(arg1)
    print("OnSubFinish7404022")
end

function Quest74040:OnSubStart7404021(arg1)
    print("OnSubStart7404021")
end

function Quest74040:OnSubFinish7404021(arg1)
    print("OnSubFinish7404021")
end

function Quest74040:OnSubStart7404026(arg1)
    print("OnSubStart7404026")
end

function Quest74040:OnSubFinish7404026(arg1)
    print("OnSubFinish7404026")
end

function Quest74040:OnSubStart7404007(arg1)
    print("OnSubStart7404007")
end

function Quest74040:OnSubFinish7404007(arg1)
    print("OnSubFinish7404007")
end

function Quest74040:OnSubStart7404027(arg1)
    print("OnSubStart7404027")
    this:RequestInteraction(npcs.Npc21070Data.alias)
end

function Quest74040:OnSubFinish7404027(arg1)
    print("OnSubFinish7404027")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21070Data.alias)
end

function Quest74040:OnSubStart7404029(arg1)
    print("OnSubStart7404029")
    actorMgr:CreateActorWithPos("Q7404029Trigger", "Actor/Gadget/Q7404029Trigger", 70900002, 0, {x = 2790.285, y = 376.739, z = 4482.615}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74040:OnSubFinish7404029(arg1)
    print("OnSubFinish7404029")
end

function Quest74040:OnSubStart7404008(arg1)
    print("OnSubStart7404008")
    actorMgr:CreateActorWithPos("Q7404008Trigger", "Actor/Gadget/Q7404008Trigger", 70900002, 0, {x = 2747.229, y = 374.396, z = 4462.646}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74040:OnSubFinish7404008(arg1)
    print("OnSubFinish7404008")
end

function Quest74040:OnSubStart7404004(arg1)
    print("OnSubStart7404004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21070Data.id, 7404004, 0, 10, 0.5)
end

function Quest74040:OnSubFinish7404004(arg1)
    print("OnSubFinish7404004")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21070Data.alias)
end

function Quest74040:OnSubStart7404005(arg1)
    print("OnSubStart7404005")
    this:CreateQuestNpc(arg1, npcs.Npc21060Data.id, 0)
end

function Quest74040:OnSubFinish7404005(arg1)
    print("OnSubFinish7404005")
    this:SafeDestroyQuestNpc(npcs.Npc21060Data.alias, 3)
end

function Quest74040:OnSubStart7404009(arg1)
    print("OnSubStart7404009")
    this:CreateQuestNpc(arg1, npcs.Npc21061Data.id, 0)
end

function Quest74040:OnSubFinish7404009(arg1)
    print("OnSubFinish7404009")
    this:SafeDestroyQuestNpc(npcs.Npc21061Data.alias, 3)
end

function Quest74040:OnSubStart7404010(arg1)
    print("OnSubStart7404010")
    this:CreateQuestNpc(arg1, npcs.Npc21062Data.id, 0)
end

function Quest74040:OnSubFinish7404010(arg1)
    print("OnSubFinish7404010")
    this:SafeDestroyQuestNpc(npcs.Npc21062Data.alias, 3)
end

function Quest74040:OnSubStart7404024(arg1)
    print("OnSubStart7404024")
    actorUtils.FinishQuestID(false, 7404024)
end

function Quest74040:OnSubFinish7404024(arg1)
    print("OnSubFinish7404024")
end

function Quest74040:OnSubStart7404011(arg1)
    print("OnSubStart7404011")
    this:CreateQuestNpc(arg1, npcs.Npc21070Data.id, 0)
    this:RequestInteraction(npcs.Npc21070Data.alias)
end

function Quest74040:OnSubFinish7404011(arg1)
    print("OnSubFinish7404011")
end

function Quest74040:OnSubStart7404006(arg1)
    print("OnSubStart7404006")
end

function Quest74040:OnSubFinish7404006(arg1)
    print("OnSubFinish7404006")
end

function Quest74040:OnSubStart7404020(arg1)
    print("OnSubStart7404020")
end

function Quest74040:OnSubFinish7404020(arg1)
    print("OnSubFinish7404020")
end

function Quest74040:OnSubStart7404025(arg1)
    print("OnSubStart7404025")
end

function Quest74040:OnSubFinish7404025(arg1)
    print("OnSubFinish7404025")
end

function Quest74040:OnSubStart7404012(arg1)
    print("OnSubStart7404012")
    this:CreateQuestNpc(arg1, npcs.Npc21070Data.id, 0)
end

function Quest74040:OnSubFinish7404012(arg1)
    print("OnSubFinish7404012")
    this:SafeDestroyQuestNpc(npcs.Npc21070Data.alias, 3)
end

function Quest74040:OnSubStart7404013(arg1)
    print("OnSubStart7404013")
    actorMgr:CreateActorWithPos("Q7404013Trigger", "Actor/Gadget/Q7404013Trigger", 70900002, 0, {x = 2689.7, y = 371.6, z = 4486.4}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74040:OnSubFinish7404013(arg1)
    print("OnSubFinish7404013")
end

function Quest74040:OnSubStart7404014(arg1)
    print("OnSubStart7404014")
    actorMgr:CreateActorWithPos("Q7404014Trigger", "Actor/Gadget/Q7404014Trigger", 70900002, 0, {x = 2496.378, y = 440.314, z = 4431.325}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74040:OnSubFinish7404014(arg1)
    print("OnSubFinish7404014")
end

function Quest74040:OnSubStart7404015(arg1)
    print("OnSubStart7404015")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5320Data.id, 7404015, 0, 25, 0.5)
end

function Quest74040:OnSubFinish7404015(arg1)
    print("OnSubFinish7404015")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5320Data.alias)
end

function Quest74040:OnSubStart7404016(arg1)
    print("OnSubStart7404016")
    this:CreateQuestNpc(arg1, npcs.Npc21059Data.id, 0)
end

function Quest74040:OnSubFinish7404016(arg1)
    print("OnSubFinish7404016")
    this:SafeDestroyQuestNpc(npcs.Npc21059Data.alias, 3)
end

function Quest74040:OnSubStart7404028(arg1)
    print("OnSubStart7404028")
    this:CreateQuestNpc(arg1, npcs.Npc21058Data.id, 0)
    this:RequestInteraction(npcs.Npc21058Data.alias)
end

function Quest74040:OnSubFinish7404028(arg1)
    print("OnSubFinish7404028")
    this:SafeDestroyQuestNpc(npcs.Npc21058Data.alias, 3)
end

function Quest74040:OnSubStart7404017(arg1)
    print("OnSubStart7404017")
end

function Quest74040:OnSubFinish7404017(arg1)
    print("OnSubFinish7404017")
end

function Quest74040:OnSubStart7404018(arg1)
    print("OnSubStart7404018")
    this:CreateQuestNpc(arg1, npcs.Npc21061Data.id, 0)
end

function Quest74040:OnSubFinish7404018(arg1)
    print("OnSubFinish7404018")
    this:SafeDestroyQuestNpc(npcs.Npc21061Data.alias, 3)
end

function Quest74040:OnSubStart7404019(arg1)
    print("OnSubStart7404019")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5320Data.id, 0, npcs.Npc5320Data.alias)
end

function Quest74040:OnSubFinish7404019(arg1)
    print("OnSubFinish7404019")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5320Data.alias)
end

return Quest74040
