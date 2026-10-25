require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14032 = class("Quest14032", QuestActorProxy)
Quest14032.defaultAlias = "Quest14032"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest14032:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest14032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1403225"] = self.OnSubStart1403225,
        ["1403201"] = self.OnSubStart1403201,
        ["1403226"] = self.OnSubStart1403226,
        ["1403227"] = self.OnSubStart1403227,
        ["1403228"] = self.OnSubStart1403228,
        ["1403202"] = self.OnSubStart1403202,
        ["1403235"] = self.OnSubStart1403235,
        ["1403203"] = self.OnSubStart1403203,
        ["1403222"] = self.OnSubStart1403222,
        ["1403204"] = self.OnSubStart1403204,
        ["1403223"] = self.OnSubStart1403223,
        ["1403205"] = self.OnSubStart1403205,
        ["1403221"] = self.OnSubStart1403221,
        ["1403224"] = self.OnSubStart1403224,
        ["1403206"] = self.OnSubStart1403206,
        ["1403219"] = self.OnSubStart1403219,
        ["1403207"] = self.OnSubStart1403207,
        ["1403208"] = self.OnSubStart1403208,
        ["1403211"] = self.OnSubStart1403211,
        ["1403212"] = self.OnSubStart1403212,
        ["1403213"] = self.OnSubStart1403213,
        ["1403214"] = self.OnSubStart1403214,
        ["1403215"] = self.OnSubStart1403215,
        ["1403231"] = self.OnSubStart1403231,
        ["1403216"] = self.OnSubStart1403216,
        ["1403217"] = self.OnSubStart1403217,
        ["1403229"] = self.OnSubStart1403229,
        ["1403230"] = self.OnSubStart1403230,
        ["1403232"] = self.OnSubStart1403232,
        ["1403233"] = self.OnSubStart1403233,
        ["1403234"] = self.OnSubStart1403234,
        ["1403218"] = self.OnSubStart1403218,
        ["1403220"] = self.OnSubStart1403220,
        ["1403209"] = self.OnSubStart1403209,
        ["1403210"] = self.OnSubStart1403210
    }
end

function Quest14032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1403225"] = self.OnSubFinish1403225,
        ["1403201"] = self.OnSubFinish1403201,
        ["1403226"] = self.OnSubFinish1403226,
        ["1403227"] = self.OnSubFinish1403227,
        ["1403228"] = self.OnSubFinish1403228,
        ["1403202"] = self.OnSubFinish1403202,
        ["1403235"] = self.OnSubFinish1403235,
        ["1403203"] = self.OnSubFinish1403203,
        ["1403222"] = self.OnSubFinish1403222,
        ["1403204"] = self.OnSubFinish1403204,
        ["1403223"] = self.OnSubFinish1403223,
        ["1403205"] = self.OnSubFinish1403205,
        ["1403221"] = self.OnSubFinish1403221,
        ["1403224"] = self.OnSubFinish1403224,
        ["1403206"] = self.OnSubFinish1403206,
        ["1403219"] = self.OnSubFinish1403219,
        ["1403207"] = self.OnSubFinish1403207,
        ["1403208"] = self.OnSubFinish1403208,
        ["1403211"] = self.OnSubFinish1403211,
        ["1403212"] = self.OnSubFinish1403212,
        ["1403213"] = self.OnSubFinish1403213,
        ["1403214"] = self.OnSubFinish1403214,
        ["1403215"] = self.OnSubFinish1403215,
        ["1403231"] = self.OnSubFinish1403231,
        ["1403216"] = self.OnSubFinish1403216,
        ["1403217"] = self.OnSubFinish1403217,
        ["1403229"] = self.OnSubFinish1403229,
        ["1403230"] = self.OnSubFinish1403230,
        ["1403232"] = self.OnSubFinish1403232,
        ["1403233"] = self.OnSubFinish1403233,
        ["1403234"] = self.OnSubFinish1403234,
        ["1403218"] = self.OnSubFinish1403218,
        ["1403220"] = self.OnSubFinish1403220,
        ["1403209"] = self.OnSubFinish1403209,
        ["1403210"] = self.OnSubFinish1403210
    }
end

function Quest14032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14032:Start()
    print("Start")
end

function Quest14032:OnDestroy()
    print("OnDestroy")
end

function Quest14032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14032:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14032:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 140320200 then
        print("\233\135\141\231\189\174\230\138\128\232\131\189\232\174\190\229\174\154\229\143\152\233\135\143")
        this:SetQuestVarByMainId(1, 0)
    elseif arg1 == 140320201 then
        print("\233\128\137\230\139\169\229\142\168\232\137\186\227\128\129\229\140\187\230\156\175")
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 140320202 then
        print("\233\128\137\230\139\169\229\142\168\232\137\186\227\128\129\230\180\158\230\130\137")
        this:SetQuestVarByMainId(1, 0)
    elseif arg1 == 140320203 then
        print("\233\128\137\230\139\169\229\140\187\230\156\175\227\128\129\230\180\158\230\130\137")
        this:SetQuestVarByMainId(1, 1)
    elseif arg1 == 140320204 then
        print("\233\128\137\230\139\169\229\140\187\230\156\175\227\128\129\229\142\168\232\137\186")
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 140320205 then
        print("\233\128\137\230\139\169\230\180\158\230\130\137\227\128\129\229\142\168\232\137\186")
        this:SetQuestVarByMainId(1, 0)
    elseif arg1 == 140320206 then
        print("\233\128\137\230\139\169\230\180\158\230\130\137\227\128\129\229\140\187\230\156\175")
        this:SetQuestVarByMainId(1, 1)
    elseif arg1 == 140320250 then
        print("\233\128\137\230\139\169\232\189\187\230\157\190\228\189\147\233\170\140")
        this:SetQuestVarByMainId(2, 1)
    elseif arg1 == 140320251 then
        print("\233\128\137\230\139\169\231\156\159\229\174\158\228\189\147\233\170\140")
        this:SetQuestVarByMainId(2, 0)
    elseif arg1 == 140320260 then
        print("\229\188\185\229\135\186\230\163\128\229\174\154\230\149\153\231\168\139")
        actorUtils.ShowContext("QuestCheckCommonTutorial", 0)
    end
end

function Quest14032:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest14032:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14032:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest14032:OnSubStart1403225(arg1)
    print("OnSubStart1403225")
    actorMgr:CreateActorWithPos("Q1403225Trigger", "Actor/Gadget/Q1403225Trigger", 70900002, 0, points.Q1403225Trigger.pos, points.Q1403225Trigger.rot, true, false, 3)
end

function Quest14032:OnSubFinish1403225(arg1)
    print("OnSubFinish1403225")
end

function Quest14032:OnSubStart1403201(arg1)
    print("OnSubStart1403201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1403201, 0, 15, 1, npcs.Npc1077.id)
end

function Quest14032:OnSubFinish1403201(arg1)
    print("OnSubFinish1403201")
    actorMgr:CreateActorWithPos("Q1403201Trigger", "Actor/Gadget/Q1403201Trigger", 70900002, 0, points._Q1403201TriggerPoint_.pos, points._Q1403201TriggerPoint_.rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
end

function Quest14032:OnSubStart1403226(arg1)
    print("OnSubStart1403226")
end

function Quest14032:OnSubFinish1403226(arg1)
    print("OnSubFinish1403226")
end

function Quest14032:OnSubStart1403227(arg1)
    print("OnSubStart1403227")
end

function Quest14032:OnSubFinish1403227(arg1)
    print("OnSubFinish1403227")
end

function Quest14032:OnSubStart1403228(arg1)
    print("OnSubStart1403228")
end

function Quest14032:OnSubFinish1403228(arg1)
    print("OnSubFinish1403228")
end

function Quest14032:OnSubStart1403202(arg1)
    print("OnSubStart1403202")
    actorMgr:CreateActorWithPos("Q1403202Trigger", "Actor/Gadget/Q1403202Trigger", 70900002, 0, points.Q1403202Trigger.pos, points.Q1403202Trigger.rot, true, false, 20217)
end

function Quest14032:OnSubFinish1403202(arg1)
    print("OnSubFinish1403202")
    this:ActorDestroy("Q1403201Trigger")
end

function Quest14032:OnSubStart1403235(arg1)
    print("OnSubStart1403235")
end

function Quest14032:OnSubFinish1403235(arg1)
    print("OnSubFinish1403235")
    this:PlayerEnterDungeonWithData(1223, 1203, 1403201, 1, datas.PlayerEnterDungeonData14032, nil, nil)
end

function Quest14032:OnSubStart1403203(arg1)
    print("OnSubStart1403203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1403203, 0, 40, 1, npcs.Npc1077.id)
end

function Quest14032:OnSubFinish1403203(arg1)
    print("OnSubFinish1403203")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 20217)
end

function Quest14032:OnSubStart1403222(arg1)
    print("OnSubStart1403222")
    this:DeployStoryByQuest(121403222)
end

function Quest14032:OnSubFinish1403222(arg1)
    print("OnSubFinish1403222")
end

function Quest14032:OnSubStart1403204(arg1)
    print("OnSubStart1403204")
    this:DeployStoryByQuest(121403222)
end

function Quest14032:OnSubFinish1403204(arg1)
    print("OnSubFinish1403204")
    this:SafeDestroyQuestNpc(npcs.Npc14093.alias, 20217)
    this:CancelStoryByQuest(121403222)
end

function Quest14032:OnSubStart1403223(arg1)
    print("OnSubStart1403223")
    this:DeployStoryByQuest(121403223)
end

function Quest14032:OnSubFinish1403223(arg1)
    print("OnSubFinish1403223")
end

function Quest14032:OnSubStart1403205(arg1)
    print("OnSubStart1403205")
    this:DeployStoryByQuest(121403223)
end

function Quest14032:OnSubFinish1403205(arg1)
    print("OnSubFinish1403205")
    this:SafeDestroyQuestNpc(npcs.Npc14094.alias, 20217)
    this:CancelStoryByQuest(121403223)
end

function Quest14032:OnSubStart1403221(arg1)
    print("OnSubStart1403221")
    actorMgr:CreateActorWithPos("Q1403221Trigger", "Actor/Gadget/Q1403221Trigger", 70900002, 0, points.Q1403221Trigger.pos, points.Q1403221Trigger.rot, true, false, 20217)
end

function Quest14032:OnSubFinish1403221(arg1)
    print("OnSubFinish1403221")
end

function Quest14032:OnSubStart1403224(arg1)
    print("OnSubStart1403224")
    this:DeployStoryByQuest(121403224)
end

function Quest14032:OnSubFinish1403224(arg1)
    print("OnSubFinish1403224")
end

function Quest14032:OnSubStart1403206(arg1)
    print("OnSubStart1403206")
    this:DeployStoryByQuest(121403224)
end

function Quest14032:OnSubFinish1403206(arg1)
    print("OnSubFinish1403206")
    this:SafeDestroyQuestNpc(npcs.Npc14095.alias, 20217)
    this:CancelStoryByQuest(121403224)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData14032, nil, nil, nil)
    end)
end

function Quest14032:OnSubStart1403219(arg1)
    print("OnSubStart1403219")
    this:CreateQuestNpc(arg1, npcs.Npc14167.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14170.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14171.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14172.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):SitOnChair(8040, true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):SitOnChair(8080, true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):SitOnChair(8013, true)
    actorMgr:CreateActorWithPos("Q1403219PolygonTrigger", "Actor/Gadget/Q1403219PolygonTrigger", 70900002, 0, points.Q1403219PolygonTrigger.pos, points.Q1403219PolygonTrigger.rot, true, false, 20217)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):DisableInteeHeadCtrl(true)
end

function Quest14032:OnSubFinish1403219(arg1)
    print("OnSubFinish1403219")
end

function Quest14032:OnSubStart1403207(arg1)
    print("OnSubStart1403207")
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):SitOnChair(0, true)
    actorMgr:CreateActorWithPos("Q1403207Trigger", "Actor/Gadget/Q1403207Trigger", 70900002, 0, points.Q1403207Trigger.pos, points.Q1403207Trigger.rot, true, false, 3)
end

function Quest14032:OnSubFinish1403207(arg1)
    print("OnSubFinish1403207")
end

function Quest14032:OnSubStart1403208(arg1)
    print("OnSubStart1403208")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc14167.id, 0, 1403208, 20, true)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):DisableInteeHeadCtrl(true)
end

function Quest14032:OnSubFinish1403208(arg1)
    print("OnSubFinish1403208")
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1266, 1205, 1403208, 1, datas.PlayerEnterDungeonData14032, nil, nil)
    end)
end

function Quest14032:OnSubStart1403211(arg1)
    print("OnSubStart1403211")
    actorMgr:CreateActorWithPos("Q1403211Trigger", "Actor/Gadget/Q1403211Trigger", 70900002, 0, points.Q1403211Trigger.pos, points.Q1403211Trigger.rot, true, false, 20219)
end

function Quest14032:OnSubFinish1403211(arg1)
    print("OnSubFinish1403211")
end

function Quest14032:OnSubStart1403212(arg1)
    print("OnSubStart1403212")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1403212, 0, 20, 1, npcs.Npc14096.id)
end

function Quest14032:OnSubFinish1403212(arg1)
    print("OnSubFinish1403212")
    this:SafeDestroyQuestNpc(npcs.Npc14096.alias, 20219)
end

function Quest14032:OnSubStart1403213(arg1)
    print("OnSubStart1403213")
    this:DeployStoryByQuest(121403213)
end

function Quest14032:OnSubFinish1403213(arg1)
    print("OnSubFinish1403213")
end

function Quest14032:OnSubStart1403214(arg1)
    print("OnSubStart1403214")
    this:DeployStoryByQuest(121403213)
end

function Quest14032:OnSubFinish1403214(arg1)
    print("OnSubFinish1403214")
end

function Quest14032:OnSubStart1403215(arg1)
    print("OnSubStart1403215")
    this:DeployStoryByQuest(121403213)
end

function Quest14032:OnSubFinish1403215(arg1)
    print("OnSubFinish1403215")
end

function Quest14032:OnSubStart1403231(arg1)
    print("OnSubStart1403231")
    actorMgr:CreateActorWithPos("Q1403231Trigger", "Actor/Gadget/Q1403231Trigger", 70900002, 0, points.Q1403231Trigger.pos, points.Q1403231Trigger.rot, true, false, 20219)
end

function Quest14032:OnSubFinish1403231(arg1)
    print("OnSubFinish1403231")
    this:CancelStoryByQuest(121403213)
end

function Quest14032:OnSubStart1403216(arg1)
    print("OnSubStart1403216")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1403216, 0, 35, 1, npcs.Npc1077.id)
end

function Quest14032:OnSubFinish1403216(arg1)
    print("OnSubFinish1403216")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 20219)
end

function Quest14032:OnSubStart1403217(arg1)
    print("OnSubStart1403217")
end

function Quest14032:OnSubFinish1403217(arg1)
    print("OnSubFinish1403217")
    this:QuestNarratorTask(datas.NarratorWithId_1403208, nil)
end

function Quest14032:OnSubStart1403229(arg1)
    print("OnSubStart1403229")
end

function Quest14032:OnSubFinish1403229(arg1)
    print("OnSubFinish1403229")
    this:QuestNarratorTask(datas.NarratorWithId_1403208, nil)
end

function Quest14032:OnSubStart1403230(arg1)
    print("OnSubStart1403230")
end

function Quest14032:OnSubFinish1403230(arg1)
    print("OnSubFinish1403230")
    this:QuestNarratorTask(datas.NarratorWithId_1403208, nil)
end

function Quest14032:OnSubStart1403232(arg1)
    print("OnSubStart1403232")
end

function Quest14032:OnSubFinish1403232(arg1)
    print("OnSubFinish1403232")
end

function Quest14032:OnSubStart1403233(arg1)
    print("OnSubStart1403233")
end

function Quest14032:OnSubFinish1403233(arg1)
    print("OnSubFinish1403233")
end

function Quest14032:OnSubStart1403234(arg1)
    print("OnSubStart1403234")
end

function Quest14032:OnSubFinish1403234(arg1)
    print("OnSubFinish1403234")
end

function Quest14032:OnSubStart1403218(arg1)
    print("OnSubStart1403218")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1403218, 0, 30, 1, npcs.Npc1077.id)
end

function Quest14032:OnSubFinish1403218(arg1)
    print("OnSubFinish1403218")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 20219)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData14032, nil, nil, nil)
end

function Quest14032:OnSubStart1403220(arg1)
    print("OnSubStart1403220")
    this:CreateQuestNpc(arg1, npcs.Npc14167.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14170.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14171.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14172.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):SitOnChair(8040, true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):SitOnChair(8060, true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):SitOnChair(8080, true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):SitOnChair(8013, true)
    actorMgr:CreateActorWithPos("Q1403220PolygonTrigger", "Actor/Gadget/Q1403220PolygonTrigger", 70900002, 0, points.Q1403220PolygonTrigger.pos, points.Q1403220PolygonTrigger.rot, true, false, 20219)
    this:GetQuestNpcActor(npcs.Npc14167.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14170.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14171.alias, 14032):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14172.alias, 14032):DisableInteeHeadCtrl(true)
end

function Quest14032:OnSubFinish1403220(arg1)
    print("OnSubFinish1403220")
    this:SafeDestroyQuestNpc(npcs.Npc14167.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14170.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14171.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14172.alias, 3)
end

function Quest14032:OnSubStart1403209(arg1)
    print("OnSubStart1403209")
    actorMgr:CreateActorWithPos("Q1403209Trigger", "Actor/Gadget/Q1403209Trigger", 70900002, 0, points.Q1403209Trigger.pos, points.Q1403209Trigger.rot, true, false, 3)
end

function Quest14032:OnSubFinish1403209(arg1)
    print("OnSubFinish1403209")
end

function Quest14032:OnSubStart1403210(arg1)
    print("OnSubStart1403210")
    this:DestroyQuestNpcActor(npcs.Npc14167.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14171.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14170.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc14172.alias, 3)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1077.id, 0, 1403210, 20, true)
    this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1071.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1073.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1077.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1077.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1071.alias, 14032):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1073.alias, 14032):SitOnChair(0, false)
end

function Quest14032:OnSubFinish1403210(arg1)
    print("OnSubFinish1403210")
    this:SafeDestroyQuestNpc(npcs.Npc1077.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1071.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073.alias, 3)
end

return Quest14032
