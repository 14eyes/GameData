require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74081 = class("Quest74081", QuestActorProxy)
Quest74081.defaultAlias = "Quest74081"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74081:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408101"] = self.OnSubStart7408101,
        ["7408102"] = self.OnSubStart7408102,
        ["7408103"] = self.OnSubStart7408103,
        ["7408104"] = self.OnSubStart7408104,
        ["7408105"] = self.OnSubStart7408105,
        ["7408107"] = self.OnSubStart7408107,
        ["7408132"] = self.OnSubStart7408132,
        ["7408114"] = self.OnSubStart7408114,
        ["7408133"] = self.OnSubStart7408133,
        ["7408115"] = self.OnSubStart7408115,
        ["7408131"] = self.OnSubStart7408131,
        ["7408116"] = self.OnSubStart7408116,
        ["7408129"] = self.OnSubStart7408129,
        ["7408117"] = self.OnSubStart7408117,
        ["7408118"] = self.OnSubStart7408118,
        ["7408119"] = self.OnSubStart7408119,
        ["7408120"] = self.OnSubStart7408120,
        ["7408121"] = self.OnSubStart7408121,
        ["7408122"] = self.OnSubStart7408122,
        ["7408123"] = self.OnSubStart7408123,
        ["7408124"] = self.OnSubStart7408124,
        ["7408125"] = self.OnSubStart7408125,
        ["7408126"] = self.OnSubStart7408126,
        ["7408127"] = self.OnSubStart7408127,
        ["7408128"] = self.OnSubStart7408128,
        ["7408106"] = self.OnSubStart7408106,
        ["7408108"] = self.OnSubStart7408108,
        ["7408109"] = self.OnSubStart7408109,
        ["7408110"] = self.OnSubStart7408110,
        ["7408111"] = self.OnSubStart7408111,
        ["7408112"] = self.OnSubStart7408112,
        ["7408113"] = self.OnSubStart7408113,
        ["7408130"] = self.OnSubStart7408130
    }
end

function Quest74081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408101"] = self.OnSubFinish7408101,
        ["7408102"] = self.OnSubFinish7408102,
        ["7408103"] = self.OnSubFinish7408103,
        ["7408104"] = self.OnSubFinish7408104,
        ["7408105"] = self.OnSubFinish7408105,
        ["7408107"] = self.OnSubFinish7408107,
        ["7408132"] = self.OnSubFinish7408132,
        ["7408114"] = self.OnSubFinish7408114,
        ["7408133"] = self.OnSubFinish7408133,
        ["7408115"] = self.OnSubFinish7408115,
        ["7408131"] = self.OnSubFinish7408131,
        ["7408116"] = self.OnSubFinish7408116,
        ["7408129"] = self.OnSubFinish7408129,
        ["7408117"] = self.OnSubFinish7408117,
        ["7408118"] = self.OnSubFinish7408118,
        ["7408119"] = self.OnSubFinish7408119,
        ["7408120"] = self.OnSubFinish7408120,
        ["7408121"] = self.OnSubFinish7408121,
        ["7408122"] = self.OnSubFinish7408122,
        ["7408123"] = self.OnSubFinish7408123,
        ["7408124"] = self.OnSubFinish7408124,
        ["7408125"] = self.OnSubFinish7408125,
        ["7408126"] = self.OnSubFinish7408126,
        ["7408127"] = self.OnSubFinish7408127,
        ["7408128"] = self.OnSubFinish7408128,
        ["7408106"] = self.OnSubFinish7408106,
        ["7408108"] = self.OnSubFinish7408108,
        ["7408109"] = self.OnSubFinish7408109,
        ["7408110"] = self.OnSubFinish7408110,
        ["7408111"] = self.OnSubFinish7408111,
        ["7408112"] = self.OnSubFinish7408112,
        ["7408113"] = self.OnSubFinish7408113,
        ["7408130"] = self.OnSubFinish7408130
    }
end

function Quest74081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74081:Start()
    print("Start")
end

function Quest74081:OnDestroy()
    print("OnDestroy")
end

function Quest74081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74081:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest74081:OnSubStart7408101(arg1)
    print("OnSubStart7408101")
    actorMgr:CreateActorWithPos("Q7408101Trigger", "Actor/Gadget/Q7408101Trigger", 70900002, 0, {x = 4354.704, y = 437.438, z = 3643.537}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408101(arg1)
    print("OnSubFinish7408101")
end

function Quest74081:OnSubStart7408102(arg1)
    print("OnSubStart7408102")
    actorMgr:CreateActorWithPos("Q7408102Trigger", "Actor/Gadget/Q7408102Trigger", 70900002, 0, {x = 4321.874, y = 453.77, z = 3687.643}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408102(arg1)
    print("OnSubFinish7408102")
end

function Quest74081:OnSubStart7408103(arg1)
    print("OnSubStart7408103")
    this:CreateQuestNpcWithTrigger("Q7408103", 7408103, 1005, 1, 100)
end

function Quest74081:OnSubFinish7408103(arg1)
    print("OnSubFinish7408103")
    self:SetNavigationByMainId(74081, true)
end

function Quest74081:OnSubStart7408104(arg1)
    print("OnSubStart7408104")
    actorMgr:CreateActorWithPos("Q7408104Trigger", "Actor/Gadget/Q7408104Trigger", 70900002, 0, {x = 4401.544, y = 443.696, z = 3717.885}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408104(arg1)
    print("OnSubFinish7408104")
end

function Quest74081:OnSubStart7408105(arg1)
    print("OnSubStart7408105")
end

function Quest74081:OnSubFinish7408105(arg1)
    print("OnSubFinish7408105")
end

function Quest74081:OnSubStart7408107(arg1)
    print("OnSubStart7408107")
end

function Quest74081:OnSubFinish7408107(arg1)
    print("OnSubFinish7408107")
end

function Quest74081:OnSubStart7408132(arg1)
    print("OnSubStart7408132")
end

function Quest74081:OnSubFinish7408132(arg1)
    print("OnSubFinish7408132")
end

function Quest74081:OnSubStart7408114(arg1)
    print("OnSubStart7408114")
    this:PlayCutsceneIndex(7408114, function(arg1)
        actorUtils.FinishQuestID(false, 7408114)
    end, nil, nil, false)
end

function Quest74081:OnSubFinish7408114(arg1)
    print("OnSubFinish7408114")
end

function Quest74081:OnSubStart7408133(arg1)
    print("OnSubStart7408133")
end

function Quest74081:OnSubFinish7408133(arg1)
    print("OnSubFinish7408133")
end

function Quest74081:OnSubStart7408115(arg1)
    print("OnSubStart7408115")
    actorMgr:CreateActorWithPos("Q7408115Trigger", "Actor/Gadget/Q7408115Trigger", 70900002, 0, {x = 4410.876, y = 375.438, z = 3838.923}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408115(arg1)
    print("OnSubFinish7408115")
end

function Quest74081:OnSubStart7408131(arg1)
    print("OnSubStart7408131")
    this:CreateQuestNpc(arg1, npcs.Npc21132Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21135Data.id, 0)
end

function Quest74081:OnSubFinish7408131(arg1)
    print("OnSubFinish7408131")
    this:SafeDestroyQuestNpc(npcs.Npc21132Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21135Data.alias, 3)
end

function Quest74081:OnSubStart7408116(arg1)
    print("OnSubStart7408116")
end

function Quest74081:OnSubFinish7408116(arg1)
    print("OnSubFinish7408116")
end

function Quest74081:OnSubStart7408129(arg1)
    print("OnSubStart7408129")
    this:CreateQuestNpcWithTrigger("Q7408129", 7408129, 5223, 1, 30)
end

function Quest74081:OnSubFinish7408129(arg1)
    print("OnSubFinish7408129")
end

function Quest74081:OnSubStart7408117(arg1)
    print("OnSubStart7408117")
    this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5223Data.alias):DoFreeStyle(1280, true, nil, true, true, false, true)
end

function Quest74081:OnSubFinish7408117(arg1)
    print("OnSubFinish7408117")
end

function Quest74081:OnSubStart7408118(arg1)
    print("OnSubStart7408118")
end

function Quest74081:OnSubFinish7408118(arg1)
    print("OnSubFinish7408118")
end

function Quest74081:OnSubStart7408119(arg1)
    print("OnSubStart7408119")
end

function Quest74081:OnSubFinish7408119(arg1)
    print("OnSubFinish7408119")
end

function Quest74081:OnSubStart7408120(arg1)
    print("OnSubStart7408120")
end

function Quest74081:OnSubFinish7408120(arg1)
    print("OnSubFinish7408120")
end

function Quest74081:OnSubStart7408121(arg1)
    print("OnSubStart7408121")
end

function Quest74081:OnSubFinish7408121(arg1)
    print("OnSubFinish7408121")
end

function Quest74081:OnSubStart7408122(arg1)
    print("OnSubStart7408122")
end

function Quest74081:OnSubFinish7408122(arg1)
    print("OnSubFinish7408122")
end

function Quest74081:OnSubStart7408123(arg1)
    print("OnSubStart7408123")
    this:GetQuestNpcActor(npcs.Npc5223Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest74081:OnSubFinish7408123(arg1)
    print("OnSubFinish7408123")
end

function Quest74081:OnSubStart7408124(arg1)
    print("OnSubStart7408124")
    this:GetQuestNpcActor(npcs.Npc5223Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7408124Trigger", "Actor/Gadget/Q7408124Trigger", 70900002, 0, {x = 4407.813, y = 356.511, z = 3832.591}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408124(arg1)
    print("OnSubFinish7408124")
end

function Quest74081:OnSubStart7408125(arg1)
    print("OnSubStart7408125")
    this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5223Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7408125Trigger", "Actor/Gadget/Q7408125Trigger", 70900002, 0, {x = 4414.792, y = 359.065, z = 3847.046}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408125(arg1)
    print("OnSubFinish7408125")
end

function Quest74081:OnSubStart7408126(arg1)
    print("OnSubStart7408126")
    actorMgr:CreateActorWithPos("Q7408126Trigger", "Actor/Gadget/Q7408126Trigger", 70900002, 0, {x = 4481.613, y = 426.897, z = 3981.713}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408126(arg1)
    print("OnSubFinish7408126")
end

function Quest74081:OnSubStart7408127(arg1)
    print("OnSubStart7408127")
    actorMgr:CreateActorWithPos("Q7408129Trigger", "Actor/Gadget/Q7408129Trigger", 70900002, 0, {x = 4751.764, y = 536.29, z = 4278.655}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74081:OnSubFinish7408127(arg1)
    print("OnSubFinish7408127")
    self:SetNavigationByMainId(74081, true)
end

function Quest74081:OnSubStart7408128(arg1)
    print("OnSubStart7408128")
end

function Quest74081:OnSubFinish7408128(arg1)
    print("OnSubFinish7408128")
end

function Quest74081:OnSubStart7408106(arg1)
    print("OnSubStart7408106")
    actorUtils.FinishQuestID(false, 7408106)
end

function Quest74081:OnSubFinish7408106(arg1)
    print("OnSubFinish7408106")
end

function Quest74081:OnSubStart7408108(arg1)
    print("OnSubStart7408108")
    this:PlayCutsceneIndex(7408108, function(arg1)
        actorUtils.FinishQuestID(false, 7408108)
    end, nil, nil, false)
end

function Quest74081:OnSubFinish7408108(arg1)
    print("OnSubFinish7408108")
end

function Quest74081:OnSubStart7408109(arg1)
    print("OnSubStart7408109")
    this:CreateQuestNpcWithTriggerBlackEx("Q7408109Trigger", 7408109, 1005, 1, 20, 0.5, 1, 0.5, 1)
end

function Quest74081:OnSubFinish7408109(arg1)
    print("OnSubFinish7408109")
end

function Quest74081:OnSubStart7408110(arg1)
    print("OnSubStart7408110")
end

function Quest74081:OnSubFinish7408110(arg1)
    print("OnSubFinish7408110")
end

function Quest74081:OnSubStart7408111(arg1)
    print("OnSubStart7408111")
end

function Quest74081:OnSubFinish7408111(arg1)
    print("OnSubFinish7408111")
end

function Quest74081:OnSubStart7408112(arg1)
    print("OnSubStart7408112")
end

function Quest74081:OnSubFinish7408112(arg1)
    print("OnSubFinish7408112")
end

function Quest74081:OnSubStart7408113(arg1)
    print("OnSubStart7408113")
end

function Quest74081:OnSubFinish7408113(arg1)
    print("OnSubFinish7408113")
end

function Quest74081:OnSubStart7408130(arg1)
    print("OnSubStart7408130")
end

function Quest74081:OnSubFinish7408130(arg1)
    print("OnSubFinish7408130")
end

return Quest74081
