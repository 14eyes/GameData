require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3022 = class("Quest3022", QuestActorProxy)
Quest3022.defaultAlias = "Quest3022"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest3022:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest3022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302201"] = self.OnSubStart302201,
        ["302202"] = self.OnSubStart302202,
        ["302203"] = self.OnSubStart302203,
        ["302204"] = self.OnSubStart302204,
        ["302225"] = self.OnSubStart302225,
        ["302205"] = self.OnSubStart302205,
        ["302206"] = self.OnSubStart302206,
        ["302207"] = self.OnSubStart302207,
        ["302233"] = self.OnSubStart302233,
        ["302208"] = self.OnSubStart302208,
        ["302237"] = self.OnSubStart302237,
        ["302243"] = self.OnSubStart302243,
        ["302244"] = self.OnSubStart302244,
        ["302209"] = self.OnSubStart302209,
        ["302231"] = self.OnSubStart302231,
        ["302232"] = self.OnSubStart302232,
        ["302249"] = self.OnSubStart302249,
        ["302210"] = self.OnSubStart302210,
        ["302235"] = self.OnSubStart302235,
        ["302239"] = self.OnSubStart302239,
        ["302247"] = self.OnSubStart302247,
        ["302248"] = self.OnSubStart302248,
        ["302226"] = self.OnSubStart302226,
        ["302211"] = self.OnSubStart302211,
        ["302212"] = self.OnSubStart302212,
        ["302213"] = self.OnSubStart302213,
        ["302214"] = self.OnSubStart302214,
        ["302236"] = self.OnSubStart302236,
        ["302246"] = self.OnSubStart302246,
        ["302227"] = self.OnSubStart302227,
        ["302215"] = self.OnSubStart302215,
        ["302238"] = self.OnSubStart302238,
        ["302245"] = self.OnSubStart302245,
        ["302228"] = self.OnSubStart302228,
        ["302216"] = self.OnSubStart302216,
        ["302217"] = self.OnSubStart302217,
        ["302224"] = self.OnSubStart302224,
        ["302229"] = self.OnSubStart302229,
        ["302219"] = self.OnSubStart302219,
        ["302218"] = self.OnSubStart302218,
        ["302220"] = self.OnSubStart302220,
        ["302230"] = self.OnSubStart302230,
        ["302221"] = self.OnSubStart302221,
        ["302234"] = self.OnSubStart302234,
        ["302240"] = self.OnSubStart302240,
        ["302222"] = self.OnSubStart302222,
        ["302223"] = self.OnSubStart302223,
        ["302242"] = self.OnSubStart302242,
        ["302241"] = self.OnSubStart302241
    }
end

function Quest3022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302201"] = self.OnSubFinish302201,
        ["302202"] = self.OnSubFinish302202,
        ["302203"] = self.OnSubFinish302203,
        ["302204"] = self.OnSubFinish302204,
        ["302225"] = self.OnSubFinish302225,
        ["302205"] = self.OnSubFinish302205,
        ["302206"] = self.OnSubFinish302206,
        ["302207"] = self.OnSubFinish302207,
        ["302233"] = self.OnSubFinish302233,
        ["302208"] = self.OnSubFinish302208,
        ["302237"] = self.OnSubFinish302237,
        ["302243"] = self.OnSubFinish302243,
        ["302244"] = self.OnSubFinish302244,
        ["302209"] = self.OnSubFinish302209,
        ["302231"] = self.OnSubFinish302231,
        ["302232"] = self.OnSubFinish302232,
        ["302249"] = self.OnSubFinish302249,
        ["302210"] = self.OnSubFinish302210,
        ["302235"] = self.OnSubFinish302235,
        ["302239"] = self.OnSubFinish302239,
        ["302247"] = self.OnSubFinish302247,
        ["302248"] = self.OnSubFinish302248,
        ["302226"] = self.OnSubFinish302226,
        ["302211"] = self.OnSubFinish302211,
        ["302212"] = self.OnSubFinish302212,
        ["302213"] = self.OnSubFinish302213,
        ["302214"] = self.OnSubFinish302214,
        ["302236"] = self.OnSubFinish302236,
        ["302246"] = self.OnSubFinish302246,
        ["302227"] = self.OnSubFinish302227,
        ["302215"] = self.OnSubFinish302215,
        ["302238"] = self.OnSubFinish302238,
        ["302245"] = self.OnSubFinish302245,
        ["302228"] = self.OnSubFinish302228,
        ["302216"] = self.OnSubFinish302216,
        ["302217"] = self.OnSubFinish302217,
        ["302224"] = self.OnSubFinish302224,
        ["302229"] = self.OnSubFinish302229,
        ["302219"] = self.OnSubFinish302219,
        ["302218"] = self.OnSubFinish302218,
        ["302220"] = self.OnSubFinish302220,
        ["302230"] = self.OnSubFinish302230,
        ["302221"] = self.OnSubFinish302221,
        ["302234"] = self.OnSubFinish302234,
        ["302240"] = self.OnSubFinish302240,
        ["302222"] = self.OnSubFinish302222,
        ["302223"] = self.OnSubFinish302223,
        ["302242"] = self.OnSubFinish302242,
        ["302241"] = self.OnSubFinish302241
    }
end

function Quest3022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["302233"] = self.OnSubFailed302233,
        ["302209"] = self.OnSubFailed302209,
        ["302211"] = self.OnSubFailed302211,
        ["302212"] = self.OnSubFailed302212,
        ["302213"] = self.OnSubFailed302213,
        ["302214"] = self.OnSubFailed302214,
        ["302217"] = self.OnSubFailed302217,
        ["302224"] = self.OnSubFailed302224
    }
end

function Quest3022:Start()
    print("Start")
end

function Quest3022:OnDestroy()
    print("OnDestroy")
end

function Quest3022:OnMainFinished(arg1)
    print("OnMainFinished")
    this:ActorDestroy(datas.Q302241_TriggerIn.alias)
end

function Quest3022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest3022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3022:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 302235 then
        actorUtils.FinishQuestID(false, 302235)
    elseif arg1 == 302234 then
        actorUtils.FinishQuestID(false, 302234)
    elseif arg1 == 302242 then
        actorUtils.FinishQuestID(false, 302242)
    elseif arg1 == 302243 then
        actorUtils.FinishQuestID(false, 302243)
    elseif arg1 == 302244 then
        actorUtils.FinishQuestID(false, 302244)
    elseif arg1 == 302245 then
        actorUtils.FinishQuestID(false, 302245)
    elseif arg1 == 302247 then
        actorUtils.FinishQuestID(false, 302247)
    elseif arg1 == 302248 then
        actorUtils.FinishQuestID(false, 302248)
    end
end

function Quest3022:OnSubStart302201(arg1)
    print("OnSubStart302201")
end

function Quest3022:OnSubFinish302201(arg1)
    print("OnSubFinish302201")
    this:ActionSafeCall(function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_302201_End)
        end)
    end)
end

function Quest3022:OnSubStart302202(arg1)
    print("OnSubStart302202")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 1)
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302202(arg1)
    print("OnSubFinish302202")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
end

function Quest3022:OnSubStart302203(arg1)
    print("OnSubStart302203")
    this:CreateQuestNpc(arg1, npcs.Npc12808Data.id, 2)
    this:GetQuestNpcActor(npcs.Npc12808Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4086Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4002Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q302203_TriggerIn", "Actor/Gadget/Q302203_TriggerIn", 70900002, 0, {x = -406.565, y = 286.341, z = 2765.515}, {x = 0.0, y = 15.788, z = 0.0}, true, false, 3)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302203(arg1)
    print("OnSubFinish302203")
    this:LightNotifyTo(npcs.Npc4086Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4002Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc12808Data.alias, 3)
end

function Quest3022:OnSubStart302204(arg1)
    print("OnSubStart302204")
    this:CreateQuestNpc(arg1, npcs.Npc12886Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12887Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12877Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc12888Data.id, 5)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
    actorMgr:CreateActorWithPos("Q302204_TriggerIn", "Actor/Gadget/Q302204_TriggerIn", 70900002, 0, {x = 0.0, y = 129.867, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
    this:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3022:OnSubFinish302204(arg1)
    print("OnSubFinish302204")
    this:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc12886Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12887Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12877Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12888Data.alias, 3)
end

function Quest3022:OnSubStart302225(arg1)
    print("OnSubStart302225")
    this:ActorDestroy(datas.Q302204_TriggerIn.alias)
    this:ShowBlackScreenWithDialogText(0.5, 5, 0, function(arg1)
        local questGlobalVar = this:GetQuestGlobalVar(3022)
        if questGlobalVar == 0 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(678, 1162, 302225, 1, nil, 0, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 1 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(678, 1162, 302225, 2, datas.Q302233_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 2 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(680, 8001, 302225, 3, datas.Q302226_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 3 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(678, 1162, 302225, 4, datas.Q302227_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 4 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(680, 8001, 302225, 5, datas.Q302228_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 5 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(678, 1162, 302225, 6, datas.Q302229_BlackDialog, 5, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 6 then
            this:ActionSafeCall(function(arg1)
                this:TransmitPlayerWithDialogTextByQuestId(302225, 1, datas.Q302220_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        elseif questGlobalVar == 7 then
            this:ActionSafeCall(function(arg1)
                this:PlayerEnterDungeonPointWithDialogs(678, 1162, 302225, 7, datas.Q302230_BlackDialog, 2, nil, function(arg1)
                    this:ShowBlackScreenWithDialogText(0.5, 2, 0, nil, nil, nil, 0, false, true)
                end)
            end)
        end
    end, nil, nil, 0, false, true)
end

function Quest3022:OnSubFinish302225(arg1)
    print("OnSubFinish302225")
end

function Quest3022:OnSubStart302205(arg1)
    print("OnSubStart302205")
    this:CreateQuestNpcWithTrigger("Q302205_TriggerIn", 302205, npcs.Npc1053Data.id, 1, 15)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302205(arg1)
    print("OnSubFinish302205")
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 20162)
end

function Quest3022:OnSubStart302206(arg1)
    print("OnSubStart302206")
    this:CreateQuestNpc(arg1, npcs.Npc12837Data.id, 1)
    actorMgr:CreateActorWithPos("Q302206_TriggerIn", "Actor/Gadget/Q302206_TriggerIn", 70900002, 0, {x = -4.949, y = 72.004, z = -0.055}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302206(arg1)
    print("OnSubFinish302206")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302207(arg1)
    print("OnSubStart302207")
    if sceneData.currSceneID == 20162 then
        self:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
            arg1:PlayCutsceneIndex(30220701, function(arg1)
                actorUtils.FinishQuestID(false, 302207)
            end, nil, nil, false)
        end, nil, nil, 0, false, true)
    end

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302207(arg1)
    print("OnSubFinish302207")
end

function Quest3022:OnSubStart302233(arg1)
    print("OnSubStart302233")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302233_TriggerIn", "Actor/Gadget/Q302233_TriggerIn", 70900002, 0, {x = 5.381, y = 60.856, z = -34.806}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
        actorMgr:CreateActorWithPos("Q302233_TriggerIn_2", "Actor/Gadget/Q302233_TriggerIn_2", 70900002, 0, {x = 0.0, y = -24.147, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
    end, nil, nil, 0, false, true)

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302233(arg1)
    print("OnSubFinish302233")
end

function Quest3022:OnSubFailed302233(arg1)
    print("OnSubFailed302233")
    this:ActorDestroy(datas.Q302233_TriggerIn.alias)
end

function Quest3022:OnSubStart302208(arg1)
    print("OnSubStart302208")
    this:ActorDestroy(datas.Q302233_TriggerIn.alias)
    this:ActorDestroy(datas.Q302233_TriggerIn_2.alias)
    this:CreateQuestNpcWithTrigger("Q302208_TriggerIn", 302208, npcs.Npc12837Data.id, 1, 90)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302208(arg1)
    print("OnSubFinish302208")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302237(arg1)
    print("OnSubStart302237")
end

function Quest3022:OnSubFinish302237(arg1)
    print("OnSubFinish302237")
end

function Quest3022:OnSubStart302243(arg1)
    print("OnSubStart302243")
end

function Quest3022:OnSubFinish302243(arg1)
    print("OnSubFinish302243")
end

function Quest3022:OnSubStart302244(arg1)
    print("OnSubStart302244")
end

function Quest3022:OnSubFinish302244(arg1)
    print("OnSubFinish302244")
end

function Quest3022:OnSubStart302209(arg1)
    print("OnSubStart302209")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302209_Start)
    end)

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302209(arg1)
    print("OnSubFinish302209")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest3022:OnSubFailed302209(arg1)
    print("OnSubFailed302209")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest3022:OnSubStart302231(arg1)
    print("OnSubStart302231")
end

function Quest3022:OnSubFinish302231(arg1)
    print("OnSubFinish302231")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302231_End)
    end)
end

function Quest3022:OnSubStart302232(arg1)
    print("OnSubStart302232")
end

function Quest3022:OnSubFinish302232(arg1)
    print("OnSubFinish302232")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302232_End)
    end)
end

function Quest3022:OnSubStart302249(arg1)
    print("OnSubStart302249")
end

function Quest3022:OnSubFinish302249(arg1)
    print("OnSubFinish302249")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_302232_End)
    end)
end

function Quest3022:OnSubStart302210(arg1)
    print("OnSubStart302210")
    this:CreateQuestNpc(arg1, npcs.Npc12837Data.id, 1)
    this:RequestInteraction(npcs.Npc12837Data.alias)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302210(arg1)
    print("OnSubFinish302210")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302235(arg1)
    print("OnSubStart302235")
end

function Quest3022:OnSubFinish302235(arg1)
    print("OnSubFinish302235")
end

function Quest3022:OnSubStart302239(arg1)
    print("OnSubStart302239")
end

function Quest3022:OnSubFinish302239(arg1)
    print("OnSubFinish302239")
end

function Quest3022:OnSubStart302247(arg1)
    print("OnSubStart302247")
end

function Quest3022:OnSubFinish302247(arg1)
    print("OnSubFinish302247")
end

function Quest3022:OnSubStart302248(arg1)
    print("OnSubStart302248")
end

function Quest3022:OnSubFinish302248(arg1)
    print("OnSubFinish302248")
end

function Quest3022:OnSubStart302226(arg1)
    print("OnSubStart302226")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302226_TriggerIn", "Actor/Gadget/Q302226_TriggerIn", 70900002, 0, {x = 0.0, y = 54.636, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 51007 then
        self:FinishQuestID(false, 302226)
    end
end

function Quest3022:OnSubFinish302226(arg1)
    print("OnSubFinish302226")
end

function Quest3022:OnSubStart302211(arg1)
    print("OnSubStart302211")
    this:CreateQuestNpc(arg1, npcs.Npc12653Data.id, 2)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12653Data.alias)
    questNpcActor:DoFreeStyle(1180, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12828Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12829Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc12830Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc12831Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12874Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc12875Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc12876Data.id, 9)
    this:CreateQuestNpc(arg1, npcs.Npc12882Data.id, 10)
    this:CreateQuestNpc(arg1, npcs.Npc12883Data.id, 11)
    this:CreateQuestNpc(arg1, npcs.Npc12884Data.id, 12)
    this:CreateQuestNpc(arg1, npcs.Npc12885Data.id, 13)
    this:CreateQuestNpc(arg1, npcs.Npc12812Data.id, 14)
    this:CreateQuestNpc(arg1, npcs.Npc12813Data.id, 15)
    this:CreateQuestNpc(arg1, npcs.Npc12886Data.id, 16)
    this:CreateQuestNpc(arg1, npcs.Npc12887Data.id, 17)
    this:CreateQuestNpc(arg1, npcs.Npc12877Data.id, 18)
    this:CreateQuestNpc(arg1, npcs.Npc12888Data.id, 19)
    this:CreateQuestNpcWithTrigger("Q302211_TriggerIn", 302211, npcs.Npc12837Data.id, 1, 15)
    this:ActorDestroy(datas.Q302226_TriggerIn.alias)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3022:OnSubFinish302211(arg1)
    print("OnSubFinish302211")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 51007)
end

function Quest3022:OnSubFailed302211(arg1)
    print("OnSubFailed302211")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    self:GetQuestNpcActor(npcs.Npc12653Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(false)
end

function Quest3022:OnSubStart302212(arg1)
    print("OnSubStart302212")
    this:CreateQuestNpc(arg1, npcs.Npc4060Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc12653Data.alias)
    questNpcActor:DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q302212_TriggerOut", "Actor/Gadget/Q302212_TriggerOut", 70900002, 0, {x = -426.204, y = 253.642, z = 2722.232}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 51007)
    actorMgr:CreateActorWithPos("Q302212_TriggerIn", "Actor/Gadget/Q302212_TriggerIn", 70900002, 0, {x = -406.369, y = 262.398, z = 2711.946}, {x = 0.0, y = 19.56, z = 0.0}, true, false, 51007)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3022:OnSubFinish302212(arg1)
    print("OnSubFinish302212")
    this:ActorDestroy(datas.Q302212_TriggerOut.alias)
    this:SafeDestroyQuestNpc(npcs.Npc4060Data.alias, 51007)
end

function Quest3022:OnSubFailed302212(arg1)
    print("OnSubFailed302212")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4060Data.alias, 51007)
    self:SafeDestroyQuestNpc(npcs.Npc4057Data.alias, 51007)
    self:SafeDestroyQuestNpc(npcs.Npc4059Data.alias, 51007)
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    self:GetQuestNpcActor(npcs.Npc12653Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(false)
end

function Quest3022:OnSubStart302213(arg1)
    print("OnSubStart302213")
    this:CreateQuestNpc(arg1, npcs.Npc4057Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4059Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc12653Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12886Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc12887Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc12877Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12888Data.id, 7)
    actorMgr:CreateActorWithPos("Q302213_TriggerOut", "Actor/Gadget/Q302213_TriggerOut", 70900002, 0, {x = -416.499, y = 268.554, z = 2707.253}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 51007)
    actorMgr:CreateActorWithPos("Q302213_TriggerIn", "Actor/Gadget/Q302213_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(51007, "Q302213_guide").pos, sceneData:GetDummyPoint(51007, "Q302213_guide").rot, true, false, 51007)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(true)
end

function Quest3022:OnSubFinish302213(arg1)
    print("OnSubFinish302213")
    this:ActorDestroy(datas.Q302213_TriggerOut.alias)
    this:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc4057Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc4059Data.alias, 51007)
end

function Quest3022:OnSubFailed302213(arg1)
    print("OnSubFailed302213")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4057Data.alias, 51007)
    self:SafeDestroyQuestNpc(npcs.Npc4059Data.alias, 51007)
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    self:GetQuestNpcActor(npcs.Npc12653Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc4057Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc4059Data.alias):DisableInteeHeadCtrl(false)
end

function Quest3022:OnSubStart302214(arg1)
    print("OnSubStart302214")
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(true)
    if sceneData.currSceneID == 51007 then
        self:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
            arg1:PlayCutsceneIndex(30221401, function(arg1)
                actorUtils.FinishQuestID(false, 302214)
            end, nil, nil, false)
        end, nil, nil, 0, false, true)
    end

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
end

function Quest3022:OnSubFinish302214(arg1)
    print("OnSubFinish302214")
    this:SafeDestroyQuestNpc(npcs.Npc12653Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12828Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12829Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12830Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12831Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12874Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12875Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12876Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12882Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12883Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12884Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12885Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12812Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12813Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12886Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12887Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12877Data.alias, 51007)
    this:SafeDestroyQuestNpc(npcs.Npc12888Data.alias, 51007)
end

function Quest3022:OnSubFailed302214(arg1)
    print("OnSubFailed302214")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
    self:GetQuestNpcActor(npcs.Npc12653Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12886Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12887Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12877Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc12888Data.alias):DisableInteeHeadCtrl(false)
end

function Quest3022:OnSubStart302236(arg1)
    print("OnSubStart302236")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
end

function Quest3022:OnSubFinish302236(arg1)
    print("OnSubFinish302236")
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
end

function Quest3022:OnSubStart302246(arg1)
    print("OnSubStart302246")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        this:TransmitPlayerWithDialogTextByQuestId(302236, 1, nil, 0)
    end, nil, nil, 0, false, true)

    local v = globalActor
    local v2 = v
    local unSpawnAttachInFixedArea = v.UnSpawnAttachInFixedArea
    local str = "Q302201"
    local str2 = "VoidAttachNew_Nilou"
    local n = 10000070
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    unSpawnAttachInFixedArea(v2, str, str2, n, v3, tbl, nil, true)
end

function Quest3022:OnSubFinish302246(arg1)
    print("OnSubFinish302246")
end

function Quest3022:OnSubStart302227(arg1)
    print("OnSubStart302227")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302227_TriggerIn", "Actor/Gadget/Q302227_TriggerIn", 70900002, 0, {x = -428.5, y = 251.123, z = 2723.437}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 51007)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 20162 then
        self:FinishQuestID(false, 302227)
    end

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302227(arg1)
    print("OnSubFinish302227")
end

function Quest3022:OnSubStart302215(arg1)
    print("OnSubStart302215")
    this:CreateQuestNpcWithTrigger("Q302215_TriggerIn", 302215, npcs.Npc12837Data.id, 1, 90)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
    this:ActorDestroy(datas.Q302227_TriggerIn.alias)
end

function Quest3022:OnSubFinish302215(arg1)
    print("OnSubFinish302215")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302238(arg1)
    print("OnSubStart302238")
end

function Quest3022:OnSubFinish302238(arg1)
    print("OnSubFinish302238")
end

function Quest3022:OnSubStart302245(arg1)
    print("OnSubStart302245")
end

function Quest3022:OnSubFinish302245(arg1)
    print("OnSubFinish302245")
end

function Quest3022:OnSubStart302228(arg1)
    print("OnSubStart302228")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302228_TriggerIn", "Actor/Gadget/Q302228_TriggerIn", 70900002, 0, {x = 0.0, y = 54.636, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 51007 then
        self:FinishQuestID(false, 302228)
    end
end

function Quest3022:OnSubFinish302228(arg1)
    print("OnSubFinish302228")
end

function Quest3022:OnSubStart302216(arg1)
    print("OnSubStart302216")
    this:CreateQuestNpcWithTrigger("Q302216_TriggerIn", 302216, npcs.Npc12837Data.id, 1, 20)
    this:ActorDestroy(datas.Q302228_TriggerIn.alias)
end

function Quest3022:OnSubFinish302216(arg1)
    print("OnSubFinish302216")
end

function Quest3022:OnSubStart302217(arg1)
    print("OnSubStart302217")
    this:CreateQuestNpcWithTrigger("Q302217_TriggerIn", 302217, npcs.Npc12837Data.id, 1, 15)
    actorMgr:CreateActorWithPos("Q302217_TriggerIn_2", "Actor/Gadget/Q302217_TriggerIn_2", 70900002, 0, sceneData:GetDummyPoint(51007, "Q302216_N1052").pos, sceneData:GetDummyPoint(51007, "Q302216_N1052").rot, true, false, 51007)
end

function Quest3022:OnSubFinish302217(arg1)
    print("OnSubFinish302217")
end

function Quest3022:OnSubFailed302217(arg1)
    print("OnSubFailed302217")
    this:ActorDestroy(datas.Q302217_TriggerIn_2.alias)
end

function Quest3022:OnSubStart302224(arg1)
    print("OnSubStart302224")
    this:CreateQuestNpcWithTrigger("Q302224_TriggerIn", 302224, npcs.Npc12837Data.id, 1, 15)
    actorMgr:CreateActorWithPos("Q302224_TriggerIn_2", "Actor/Gadget/Q302224_TriggerIn_2", 70900002, 0, sceneData:GetDummyPoint(51007, "TheBoys_EremiteElite_Pos01").pos, sceneData:GetDummyPoint(51007, "TheBoys_EremiteElite_Pos01").rot, true, false, 51007)
end

function Quest3022:OnSubFinish302224(arg1)
    print("OnSubFinish302224")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 51007)
end

function Quest3022:OnSubFailed302224(arg1)
    print("OnSubFailed302224")
    this:ActorDestroy(datas.Q302224_TriggerIn_2.alias)
end

function Quest3022:OnSubStart302229(arg1)
    print("OnSubStart302229")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302229_TriggerIn", "Actor/Gadget/Q302229_TriggerIn", 70900002, 0, {x = -396.531, y = 242.258, z = 2791.596}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 51007)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 20162 then
        self:FinishQuestID(false, 302229)
    end
end

function Quest3022:OnSubFinish302229(arg1)
    print("OnSubFinish302229")
end

function Quest3022:OnSubStart302219(arg1)
    print("OnSubStart302219")
    this:CreateQuestNpcWithTrigger("Q302219_TriggerIn", 302219, npcs.Npc12837Data.id, 1, 15)
    this:ActorDestroy(datas.Q302229_TriggerIn.alias)
end

function Quest3022:OnSubFinish302219(arg1)
    print("OnSubFinish302219")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302218(arg1)
    print("OnSubStart302218")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q302218_TriggerIn", "Actor/Gadget/Q302218_TriggerIn", 70900002, 0, {x = 0.0, y = 54.636, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 1075 then
        self:FinishQuestID(false, 302218)
    end
end

function Quest3022:OnSubFinish302218(arg1)
    print("OnSubFinish302218")
end

function Quest3022:OnSubStart302220(arg1)
    print("OnSubStart302220")
    this:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
        this:CreateQuestNpcWithTrigger("Q302220_TriggerIn", 302220, npcs.Npc12837Data.id, 1, 100)
    end, nil, nil, 0, false, true)

    if sceneData.currSceneID == 20162 then
        self:FinishQuestID(false, 302220)
    end

    this:ActorDestroy(datas.Q302218_TriggerIn.alias)
end

function Quest3022:OnSubFinish302220(arg1)
    print("OnSubFinish302220")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc12660Data.alias, 1075)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 1075)
end

function Quest3022:OnSubStart302230(arg1)
    print("OnSubStart302230")
    if sceneData.currSceneID == 20162 then
        self:FinishQuestID(false, 302230)
    else
        self:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
            actorMgr:CreateActorWithPos("Q302230_TriggerIn", "Actor/Gadget/Q302230_TriggerIn", 70900002, 0, {x = 0.0, y = 129.867, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
        end, nil, nil, 0, false, true)
    end

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302230(arg1)
    print("OnSubFinish302230")
end

function Quest3022:OnSubStart302221(arg1)
    print("OnSubStart302221")
    this:CreateQuestNpcWithTrigger("Q302221_TriggerIn", 302221, npcs.Npc12837Data.id, 1, 15)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
    this:ActorDestroy(datas.Q302230_TriggerIn.alias)
end

function Quest3022:OnSubFinish302221(arg1)
    print("OnSubFinish302221")
    this:SafeDestroyQuestNpc(npcs.Npc12837Data.alias, 20162)
end

function Quest3022:OnSubStart302234(arg1)
    print("OnSubStart302234")
end

function Quest3022:OnSubFinish302234(arg1)
    print("OnSubFinish302234")
end

function Quest3022:OnSubStart302240(arg1)
    print("OnSubStart302240")
end

function Quest3022:OnSubFinish302240(arg1)
    print("OnSubFinish302240")
end

function Quest3022:OnSubStart302222(arg1)
    print("OnSubStart302222")
    this:CreateQuestNpc(arg1, npcs.Npc12653Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12809Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc13092Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc13093Data.id, 4)
    this:UnSpawn(gadgets.Gadget70710885Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710885Data.id, 1, 0)
    if sceneData.currSceneID == 20162 then
        self:ShowBlackScreenWithDialogText(0.5, 2, 0.5, function(arg1)
            actorMgr:CreateActorWithPos("Q302222_TriggerIn", "Actor/Gadget/Q302222_TriggerIn", 70900002, 0, {x = 0.0, y = 54.636, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20162)
        end, nil, nil, 0, false, true)
    end

    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
    this:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest3022:OnSubFinish302222(arg1)
    print("OnSubFinish302222")
    this:UnSpawn(gadgets.Gadget70710885Data.alias)
end

function Quest3022:OnSubStart302223(arg1)
    print("OnSubStart302223")
    this:CreateQuestNpcWithTrigger("Q302223_TriggerIn", 302223, npcs.Npc1056Data.id, 1, 120)
    this:ActorDestroy(datas.Q302222_TriggerIn.alias)
    self:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
    local v = globalActor
    local v2 = v
    local spawnAttachInFixedAreaEx = v.SpawnAttachInFixedAreaEx
    local str = "Q302201"
    local str2 = "VoidAttachNew_PlayerBoy"
    local n = 10000005
    local v3
    local tbl = {}
    local n2 = 2412
    tbl[1] = 2103
    tbl[2] = n2
    local v4
    local tbl2 = {}
    local n3 = 20162
    tbl2[1] = 51007
    tbl2[2] = n3
    spawnAttachInFixedAreaEx(v2, str, str2, n, v3, tbl, v4, tbl2, true)
    local v5 = globalActor
    local v6 = v5
    local func = v5.SpawnAttachInFixedAreaEx
    local str3 = "Q302201"
    local str4 = "VoidAttachNew_PlayerGirl"
    local n4 = 10000007
    local v7
    local tbl3 = {}
    local n5 = 2412
    tbl3[1] = 2103
    tbl3[2] = n5
    local v8
    local tbl4 = {}
    local n6 = 20162
    tbl4[1] = 51007
    tbl4[2] = n6
    func(v6, str3, str4, n4, v7, tbl3, v8, tbl4, true)
end

function Quest3022:OnSubFinish302223(arg1)
    print("OnSubFinish302223")
    this:SafeDestroyQuestNpc(npcs.Npc12653Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1056Data.alias, 1075)
end

function Quest3022:OnSubStart302242(arg1)
    print("OnSubStart302242")
    self:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest3022:OnSubFinish302242(arg1)
    print("OnSubFinish302242")
end

function Quest3022:OnSubStart302241(arg1)
    print("OnSubStart302241")
    if sceneData.currSceneID == 1075 then
        self:ShowBlackScreenWithDialogText(0.5, 2, 0, function(arg1)
            actorMgr:CreateActorWithPos("Q302241_TriggerIn", "Actor/Gadget/Q302241_TriggerIn", 70900002, 0, {x = 0.053, y = 133.719, z = -0.105}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1075)
        end, nil, nil, 0, false, true)
    else
        if sceneData.currSceneID ~= 1075 then
            actorUtils.FinishQuestID(false, 302241)
        end
    end

    self:GetQuestNpcActor(npcs.Npc13092Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc13093Data.alias):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB02", 0, false, true, false)
end

function Quest3022:OnSubFinish302241(arg1)
    print("OnSubFinish302241")
    this:SafeDestroyQuestNpc(npcs.Npc12809Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13092Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13093Data.alias, 3)
end

return Quest3022
