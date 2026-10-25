require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74001 = class("Quest74001", QuestActorProxy)
Quest74001.defaultAlias = "Quest74001"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74001:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400101"] = self.OnSubStart7400101,
        ["7400139"] = self.OnSubStart7400139,
        ["7400140"] = self.OnSubStart7400140,
        ["7400102"] = self.OnSubStart7400102,
        ["7400133"] = self.OnSubStart7400133,
        ["7400103"] = self.OnSubStart7400103,
        ["7400104"] = self.OnSubStart7400104,
        ["7400105"] = self.OnSubStart7400105,
        ["7400106"] = self.OnSubStart7400106,
        ["7400145"] = self.OnSubStart7400145,
        ["7400141"] = self.OnSubStart7400141,
        ["7400108"] = self.OnSubStart7400108,
        ["7400109"] = self.OnSubStart7400109,
        ["7400110"] = self.OnSubStart7400110,
        ["7400111"] = self.OnSubStart7400111,
        ["7400123"] = self.OnSubStart7400123,
        ["7400142"] = self.OnSubStart7400142,
        ["7400143"] = self.OnSubStart7400143,
        ["7400112"] = self.OnSubStart7400112,
        ["7400144"] = self.OnSubStart7400144,
        ["7400113"] = self.OnSubStart7400113,
        ["7400114"] = self.OnSubStart7400114,
        ["7400115"] = self.OnSubStart7400115,
        ["7400116"] = self.OnSubStart7400116,
        ["7400117"] = self.OnSubStart7400117,
        ["7400118"] = self.OnSubStart7400118,
        ["7400119"] = self.OnSubStart7400119,
        ["7400120"] = self.OnSubStart7400120,
        ["7400121"] = self.OnSubStart7400121,
        ["7400122"] = self.OnSubStart7400122,
        ["7400146"] = self.OnSubStart7400146,
        ["7400124"] = self.OnSubStart7400124,
        ["7400125"] = self.OnSubStart7400125,
        ["7400126"] = self.OnSubStart7400126,
        ["7400127"] = self.OnSubStart7400127,
        ["7400129"] = self.OnSubStart7400129,
        ["7400128"] = self.OnSubStart7400128,
        ["7400130"] = self.OnSubStart7400130,
        ["7400131"] = self.OnSubStart7400131,
        ["7400138"] = self.OnSubStart7400138,
        ["7400132"] = self.OnSubStart7400132,
        ["7400135"] = self.OnSubStart7400135,
        ["7400107"] = self.OnSubStart7400107,
        ["7400136"] = self.OnSubStart7400136
    }
end

function Quest74001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400101"] = self.OnSubFinish7400101,
        ["7400139"] = self.OnSubFinish7400139,
        ["7400140"] = self.OnSubFinish7400140,
        ["7400102"] = self.OnSubFinish7400102,
        ["7400133"] = self.OnSubFinish7400133,
        ["7400103"] = self.OnSubFinish7400103,
        ["7400104"] = self.OnSubFinish7400104,
        ["7400105"] = self.OnSubFinish7400105,
        ["7400106"] = self.OnSubFinish7400106,
        ["7400145"] = self.OnSubFinish7400145,
        ["7400141"] = self.OnSubFinish7400141,
        ["7400108"] = self.OnSubFinish7400108,
        ["7400109"] = self.OnSubFinish7400109,
        ["7400110"] = self.OnSubFinish7400110,
        ["7400111"] = self.OnSubFinish7400111,
        ["7400123"] = self.OnSubFinish7400123,
        ["7400142"] = self.OnSubFinish7400142,
        ["7400143"] = self.OnSubFinish7400143,
        ["7400112"] = self.OnSubFinish7400112,
        ["7400144"] = self.OnSubFinish7400144,
        ["7400113"] = self.OnSubFinish7400113,
        ["7400114"] = self.OnSubFinish7400114,
        ["7400115"] = self.OnSubFinish7400115,
        ["7400116"] = self.OnSubFinish7400116,
        ["7400117"] = self.OnSubFinish7400117,
        ["7400118"] = self.OnSubFinish7400118,
        ["7400119"] = self.OnSubFinish7400119,
        ["7400120"] = self.OnSubFinish7400120,
        ["7400121"] = self.OnSubFinish7400121,
        ["7400122"] = self.OnSubFinish7400122,
        ["7400146"] = self.OnSubFinish7400146,
        ["7400124"] = self.OnSubFinish7400124,
        ["7400125"] = self.OnSubFinish7400125,
        ["7400126"] = self.OnSubFinish7400126,
        ["7400127"] = self.OnSubFinish7400127,
        ["7400129"] = self.OnSubFinish7400129,
        ["7400128"] = self.OnSubFinish7400128,
        ["7400130"] = self.OnSubFinish7400130,
        ["7400131"] = self.OnSubFinish7400131,
        ["7400138"] = self.OnSubFinish7400138,
        ["7400132"] = self.OnSubFinish7400132,
        ["7400135"] = self.OnSubFinish7400135,
        ["7400107"] = self.OnSubFinish7400107,
        ["7400136"] = self.OnSubFinish7400136
    }
end

function Quest74001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74001:Start()
    print("Start")
end

function Quest74001:OnDestroy()
    print("OnDestroy")
end

function Quest74001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74001:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74001:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(2, 2)
    elseif arg1 == 3 then
        this:SetQuestVarByMainId(3, 2)
    elseif arg1 == 10 then
        actorUtils.FinishQuestID(false, 7400145)
    end
end

function Quest74001:OnSubStart7400101(arg1)
    print("OnSubStart7400101")
    this:CreateQuestNpc(arg1, npcs.Npc21146Data.id, 0)
end

function Quest74001:OnSubFinish7400101(arg1)
    print("OnSubFinish7400101")
    this:NarratorOnlyTaskByData(datas.Narrator_7400101)
    self:SetNavigationByMainId(74001, true)
    this:SafeDestroyQuestNpc(npcs.Npc21146Data.alias, 3)
end

function Quest74001:OnSubStart7400139(arg1)
    print("OnSubStart7400139")
    actorMgr:CreateActorWithPos("Q7400139Trigger", "Actor/Gadget/Q7400139Trigger", 70900002, 0, {x = 3545.2, y = 299.509, z = 4953.697}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74001:OnSubFinish7400139(arg1)
    print("OnSubFinish7400139")
end

function Quest74001:OnSubStart7400140(arg1)
    print("OnSubStart7400140")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21146Data.id, 1)
        actorMgr:CreateActorWithPos("Q7400140Trigger", "Actor/Gadget/Q7400140Trigger", 70900002, 0, {x = 3548.162, y = 295.902, z = 4959.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400140(arg1)
    print("OnSubFinish7400140")
    this:NarratorOnlyTaskByData(datas.Narrator_7400101)
    self:SetNavigationByMainId(74001, true)
    this:SafeDestroyQuestNpc(npcs.Npc21146Data.alias, 3)
    this:ActorDestroy("Q7400140Trigger")
end

function Quest74001:OnSubStart7400102(arg1)
    print("OnSubStart7400102")
    actorMgr:CreateActorWithPos("Q7400102Trigger", "Actor/Gadget/Q7400102Trigger", 70900002, 0, {x = 3585.01, y = 295.096, z = 4936.228}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400102(arg1)
    print("OnSubFinish7400102")
    self:SetNavigationByMainId(74001, true)
end

function Quest74001:OnSubStart7400133(arg1)
    print("OnSubStart7400133")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc21146Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc21001Data.id, 3)
        this:RequestInteraction(npcs.Npc21146Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400133(arg1)
    print("OnSubFinish7400133")
    this:NarratorOnlyTaskByData(datas.Narrator_7400102)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21146Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21001Data.alias, 3)
    self:SetNavigationByMainId(74001, true)
end

function Quest74001:OnSubStart7400103(arg1)
    print("OnSubStart7400103")
    actorMgr:CreateActorWithPos("Q7400103Trigger", "Actor/Gadget/Q7400103Trigger", 70900002, 0, {x = 3642.584, y = 266.907, z = 5009.282}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400103(arg1)
    print("OnSubFinish7400103")
    self:SetNavigationByMainId(74001, true)
end

function Quest74001:OnSubStart7400104(arg1)
    print("OnSubStart7400104")
end

function Quest74001:OnSubFinish7400104(arg1)
    print("OnSubFinish7400104")
    self:SetNavigationByMainId(74001, true)
end

function Quest74001:OnSubStart7400105(arg1)
    print("OnSubStart7400105")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20996Data.id, 7400105, 0, 20, 1)
    actorMgr:CreateActorWithPos("Q7400105Trigger", "Actor/Gadget/Q7400105Trigger", 70900002, 0, {x = 3640.994, y = 268.237, z = 5009.56}, {x = 0.0, y = 353.91, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400105(arg1)
    print("OnSubFinish7400105")
end

function Quest74001:OnSubStart7400106(arg1)
    print("OnSubStart7400106")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 2)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400106(arg1)
    print("OnSubFinish7400106")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
end

function Quest74001:OnSubStart7400145(arg1)
    print("OnSubStart7400145")
end

function Quest74001:OnSubFinish7400145(arg1)
    print("OnSubFinish7400145")
end

function Quest74001:OnSubStart7400141(arg1)
    print("OnSubStart7400141")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7400141, function(arg1)
            actorUtils.FinishQuestID(false, 7400141)
        end, nil, nil, false)
    end)
end

function Quest74001:OnSubFinish7400141(arg1)
    print("OnSubFinish7400141")
end

function Quest74001:OnSubStart7400108(arg1)
    print("OnSubStart7400108")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 2)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400108(arg1)
    print("OnSubFinish7400108")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
end

function Quest74001:OnSubStart7400109(arg1)
    print("OnSubStart7400109")
end

function Quest74001:OnSubFinish7400109(arg1)
    print("OnSubFinish7400109")
end

function Quest74001:OnSubStart7400110(arg1)
    print("OnSubStart7400110")
end

function Quest74001:OnSubFinish7400110(arg1)
    print("OnSubFinish7400110")
end

function Quest74001:OnSubStart7400111(arg1)
    print("OnSubStart7400111")
end

function Quest74001:OnSubFinish7400111(arg1)
    print("OnSubFinish7400111")
end

function Quest74001:OnSubStart7400123(arg1)
    print("OnSubStart7400123")
    this:CreateQuestNpc(arg1, npcs.Npc21120Data.id, 1)
    this:RequestInteraction(npcs.Npc21120Data.alias)
end

function Quest74001:OnSubFinish7400123(arg1)
    print("OnSubFinish7400123")
    this:SafeDestroyQuestNpc(npcs.Npc21120Data.alias, 3)
end

function Quest74001:OnSubStart7400142(arg1)
    print("OnSubStart7400142")
    this:CreateQuestNpc(arg1, npcs.Npc21120Data.id, 1)
    this:RequestInteraction(npcs.Npc21120Data.alias)
end

function Quest74001:OnSubFinish7400142(arg1)
    print("OnSubFinish7400142")
    this:SafeDestroyQuestNpc(npcs.Npc21120Data.alias, 3)
end

function Quest74001:OnSubStart7400143(arg1)
    print("OnSubStart7400143")
    this:CreateQuestNpc(arg1, npcs.Npc21120Data.id, 1)
    this:RequestInteraction(npcs.Npc21120Data.alias)
end

function Quest74001:OnSubFinish7400143(arg1)
    print("OnSubFinish7400143")
    this:SafeDestroyQuestNpc(npcs.Npc21120Data.alias, 3)
end

function Quest74001:OnSubStart7400112(arg1)
    print("OnSubStart7400112")
    this:CreateQuestNpc(arg1, npcs.Npc21000Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21119Data.id, 2)
    this:RequestInteraction(npcs.Npc21000Data.alias)
    this:RequestInteraction(npcs.Npc21119Data.alias)
end

function Quest74001:OnSubFinish7400112(arg1)
    print("OnSubFinish7400112")
    this:SafeDestroyQuestNpc(npcs.Npc21000Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21119Data.alias, 3)
end

function Quest74001:OnSubStart7400144(arg1)
    print("OnSubStart7400144")
    actorMgr:CreateActorWithPos("Q7400144Trigger", "Actor/Gadget/Q7400144Trigger", 70900002, 0, {x = 3715.296, y = 249.746, z = 4980.479}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74001:OnSubFinish7400144(arg1)
    print("OnSubFinish7400144")
    this:NarratorOnlyTaskByDataWithPriority(datas.Narrator_7400103, 74001, 9)
end

function Quest74001:OnSubStart7400113(arg1)
    print("OnSubStart7400113")
    actorMgr:CreateActorWithPos("Q7400113Trigger", "Actor/Gadget/Q7400113Trigger", 70900002, 0, {x = 3727.246, y = 249.746, z = 4981.369}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400113(arg1)
    print("OnSubFinish7400113")
end

function Quest74001:OnSubStart7400114(arg1)
    print("OnSubStart7400114")
end

function Quest74001:OnSubFinish7400114(arg1)
    print("OnSubFinish7400114")
end

function Quest74001:OnSubStart7400115(arg1)
    print("OnSubStart7400115")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20996Data.id, 7400115, 0, 20, 1)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 0)
        actorMgr:CreateActorWithPos("Q7400115Trigger", "Actor/Gadget/Q7400115Trigger", 70900002, 0, {x = 3721.827, y = 249.746, z = 4976.375}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74001:OnSubFinish7400115(arg1)
    print("OnSubFinish7400115")
end

function Quest74001:OnSubStart7400116(arg1)
    print("OnSubStart7400116")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 3)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400116(arg1)
    print("OnSubFinish7400116")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20996Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20997Data.alias, 3)
end

function Quest74001:OnSubStart7400117(arg1)
    print("OnSubStart7400117")
    this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400117Trigger", "Actor/Gadget/Q7400117Trigger", 70900002, 0, {x = 3765.509, y = 267.798, z = 4983.915}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400117(arg1)
    print("OnSubFinish7400117")
end

function Quest74001:OnSubStart7400118(arg1)
    print("OnSubStart7400118")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 2)
        this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 3)
        this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 4)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400118(arg1)
    print("OnSubFinish7400118")
end

function Quest74001:OnSubStart7400119(arg1)
    print("OnSubStart7400119")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20996Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20997Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc20998Data.id, 4)
end

function Quest74001:OnSubFinish7400119(arg1)
    print("OnSubFinish7400119")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74001:OnSubStart7400120(arg1)
    print("OnSubStart7400120")
end

function Quest74001:OnSubFinish7400120(arg1)
    print("OnSubFinish7400120")
end

function Quest74001:OnSubStart7400121(arg1)
    print("OnSubStart7400121")
end

function Quest74001:OnSubFinish7400121(arg1)
    print("OnSubFinish7400121")
end

function Quest74001:OnSubStart7400122(arg1)
    print("OnSubStart7400122")
end

function Quest74001:OnSubFinish7400122(arg1)
    print("OnSubFinish7400122")
end

function Quest74001:OnSubStart7400146(arg1)
    print("OnSubStart7400146")
    actorMgr:CreateActorWithPos("Q7400146Trigger", "Actor/Gadget/Q7400146Trigger", 70900002, 0, {x = 3696.106, y = 267.673, z = 5046.997}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74001:OnSubFinish7400146(arg1)
    print("OnSubFinish7400146")
end

function Quest74001:OnSubStart7400124(arg1)
    print("OnSubStart7400124")
    this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400124Trigger", "Actor/Gadget/Q7400124Trigger", 70900002, 0, {x = 3664.377, y = 276.5, z = 5045.51}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400124(arg1)
    print("OnSubFinish7400124")
end

function Quest74001:OnSubStart7400125(arg1)
    print("OnSubStart7400125")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400125(arg1)
    print("OnSubFinish7400125")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20999Data.alias, 3)
end

function Quest74001:OnSubStart7400126(arg1)
    print("OnSubStart7400126")
end

function Quest74001:OnSubFinish7400126(arg1)
    print("OnSubFinish7400126")
end

function Quest74001:OnSubStart7400127(arg1)
    print("OnSubStart7400127")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20999Data.id, 7400127, 0, 20, 1)
    actorMgr:CreateActorWithPos("Q7400127Trigger", "Actor/Gadget/Q7400127Trigger", 70900002, 0, points.TPos_Q7400127Trigger.pos, points.TPos_Q7400127Trigger.rot, true, false, 3)
end

function Quest74001:OnSubFinish7400127(arg1)
    print("OnSubFinish7400127")
end

function Quest74001:OnSubStart7400129(arg1)
    print("OnSubStart7400129")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 1)
        this:CreateQuestNpc(arg1, npcs.Npc20999Data.id, 2)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74001:OnSubFinish7400129(arg1)
    print("OnSubFinish7400129")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
    self:SetNavigationByMainId(74002, true)
end

function Quest74001:OnSubStart7400128(arg1)
    print("OnSubStart7400128")
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74001:OnSubFinish7400128(arg1)
    print("OnSubFinish7400128")
end

function Quest74001:OnSubStart7400130(arg1)
    print("OnSubStart7400130")
end

function Quest74001:OnSubFinish7400130(arg1)
    print("OnSubFinish7400130")
end

function Quest74001:OnSubStart7400131(arg1)
    print("OnSubStart7400131")
end

function Quest74001:OnSubFinish7400131(arg1)
    print("OnSubFinish7400131")
end

function Quest74001:OnSubStart7400138(arg1)
    print("OnSubStart7400138")
    actorMgr:CreateActorWithPos("Q7400138Trigger", "Actor/Gadget/Q7400138Trigger", 70900002, 0, points.TPos_Q7400138Trigger.pos, points.TPos_Q7400138Trigger.rot, true, false, 3)
end

function Quest74001:OnSubFinish7400138(arg1)
    print("OnSubFinish7400138")
end

function Quest74001:OnSubStart7400132(arg1)
    print("OnSubStart7400132")
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74001:OnSubFinish7400132(arg1)
    print("OnSubFinish7400132")
end

function Quest74001:OnSubStart7400135(arg1)
    print("OnSubStart7400135")
    actorMgr:CreateActorWithPos("Q7400135Trigger", "Actor/Gadget/Q7400135Trigger", 70900002, 0, points.TPos_Q7400135Trigger.pos, points.TPos_Q7400135Trigger.rot, true, false, 3)
end

function Quest74001:OnSubFinish7400135(arg1)
    print("OnSubFinish7400135")
end

function Quest74001:OnSubStart7400107(arg1)
    print("OnSubStart7400107")
    actorMgr:CreateActorWithPos("Q7400107Trigger", "Actor/Gadget/Q7400107Trigger", 70900002, 0, {x = 3651.055, y = 248.401, z = 4958.489}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400107(arg1)
    print("OnSubFinish7400107")
end

function Quest74001:OnSubStart7400136(arg1)
    print("OnSubStart7400136")
    actorMgr:CreateActorWithPos("Q7400136Trigger", "Actor/Gadget/Q7400136Trigger", 70900002, 0, {x = 3663.539, y = 276.5, z = 5045.514}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74001:OnSubFinish7400136(arg1)
    print("OnSubFinish7400136")
end

return Quest74001
