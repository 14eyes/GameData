require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40012 = class("Quest40012", QuestActorProxy)
Quest40012.defaultAlias = "Quest40012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001205"] = self.OnSubStart4001205,
        ["4001215"] = self.OnSubStart4001215,
        ["4001214"] = self.OnSubStart4001214,
        ["4001201"] = self.OnSubStart4001201,
        ["4001202"] = self.OnSubStart4001202,
        ["4001203"] = self.OnSubStart4001203,
        ["4001204"] = self.OnSubStart4001204,
        ["4001207"] = self.OnSubStart4001207,
        ["4001206"] = self.OnSubStart4001206,
        ["4001208"] = self.OnSubStart4001208,
        ["4001209"] = self.OnSubStart4001209,
        ["4001210"] = self.OnSubStart4001210,
        ["4001211"] = self.OnSubStart4001211,
        ["4001212"] = self.OnSubStart4001212,
        ["4001213"] = self.OnSubStart4001213,
        ["4001216"] = self.OnSubStart4001216,
        ["4001218"] = self.OnSubStart4001218,
        ["4001217"] = self.OnSubStart4001217
    }
end

function Quest40012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001205"] = self.OnSubFinish4001205,
        ["4001215"] = self.OnSubFinish4001215,
        ["4001214"] = self.OnSubFinish4001214,
        ["4001201"] = self.OnSubFinish4001201,
        ["4001202"] = self.OnSubFinish4001202,
        ["4001203"] = self.OnSubFinish4001203,
        ["4001204"] = self.OnSubFinish4001204,
        ["4001207"] = self.OnSubFinish4001207,
        ["4001206"] = self.OnSubFinish4001206,
        ["4001208"] = self.OnSubFinish4001208,
        ["4001209"] = self.OnSubFinish4001209,
        ["4001210"] = self.OnSubFinish4001210,
        ["4001211"] = self.OnSubFinish4001211,
        ["4001212"] = self.OnSubFinish4001212,
        ["4001213"] = self.OnSubFinish4001213,
        ["4001216"] = self.OnSubFinish4001216,
        ["4001218"] = self.OnSubFinish4001218,
        ["4001217"] = self.OnSubFinish4001217
    }
end

function Quest40012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001205"] = self.OnSubFailed4001205,
        ["4001215"] = self.OnSubFailed4001215,
        ["4001214"] = self.OnSubFailed4001214,
        ["4001201"] = self.OnSubFailed4001201,
        ["4001202"] = self.OnSubFailed4001202,
        ["4001203"] = self.OnSubFailed4001203,
        ["4001204"] = self.OnSubFailed4001204,
        ["4001207"] = self.OnSubFailed4001207,
        ["4001206"] = self.OnSubFailed4001206,
        ["4001208"] = self.OnSubFailed4001208,
        ["4001209"] = self.OnSubFailed4001209,
        ["4001210"] = self.OnSubFailed4001210,
        ["4001211"] = self.OnSubFailed4001211,
        ["4001212"] = self.OnSubFailed4001212,
        ["4001213"] = self.OnSubFailed4001213,
        ["4001216"] = self.OnSubFailed4001216,
        ["4001218"] = self.OnSubFailed4001218,
        ["4001217"] = self.OnSubFailed4001217
    }
end

function Quest40012:Start()
    print("Start")
end

function Quest40012:OnDestroy()
    print("OnDestroy")
end

function Quest40012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40012:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 4)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:ActorDestroy("Q40012AlbedoTrigger")
    self:ActorDestroy("Q40012RazorTrigger")
    self:ActorDestroy("Q40012CampSealTrigger")
    self:ActorDestroy("Q40012CampSealGearTrigger")
    self:ActorDestroy("Q40012CampTrigger")
    self:ActorDestroy("Q40012PuppetTrigger")
    self:ActorDestroy("Q40012CampTrigger2")
end

function Quest40012:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40012:NpcCreateWithBlackscreenInteractionDelay(arg1, arg2, arg3, arg4)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, arg2, arg3)
            arg1_2:RequestInteraction(arg4)
        end)
    end)
end

function Quest40012:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest40012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:UnSpawn(gadgets.Gadget70710394Data.alias)
        self:SpawnGadgetById(4001210, gadgets.Gadget70710394Data.id, 1)
        self:UnSpawn(gadgets.Gadget70710395Data.alias)
        self:SpawnGadgetById(4001210, gadgets.Gadget70710395Data.id, 2)
        self:UnSpawn(gadgets.Gadget70710396Data.alias)
        self:SpawnGadgetById(4001210, gadgets.Gadget70710396Data.id, 3)
    elseif arg1 == 2 then
        self:UnSpawn(gadgets.Gadget70710394Data.alias)
        self:UnSpawn(gadgets.Gadget70710395Data.alias)
        self:UnSpawn(gadgets.Gadget70710396Data.alias)
    elseif arg1 == 3 then
        globalActor:ChangeDay24Time(7, true)
    end
end

function Quest40012:OnSubStart4001201(arg1)
    print("OnSubStart4001201")
    self:NpcCreateWithBlackscreen(arg1, npcs.BarbaraData.id, 1)
end

function Quest40012:OnSubFinish4001201(arg1)
    print("OnSubFinish4001201")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
end

function Quest40012:OnSubFailed4001201(arg1)
    print("OnSubFailed4001201")
    self:SafeDestroyQuestNpc(npcs.BarbaraData.alias, 4)
end

function Quest40012:OnSubStart4001202(arg1)
    print("OnSubStart4001202")
    self:CreateQuestNpc(arg1, npcs.GaiaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.DilucData.id, 2)
end

function Quest40012:OnSubFinish4001202(arg1)
    print("OnSubFinish4001202")
end

function Quest40012:OnSubFailed4001202(arg1)
    print("OnSubFailed4001202")
end

function Quest40012:OnSubStart4001203(arg1)
    print("OnSubStart4001203")
    self:RequestInteraction(npcs.GaiaData.alias)
end

function Quest40012:OnSubFinish4001203(arg1)
    print("OnSubFinish4001203")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 4)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 4)
end

function Quest40012:OnSubFailed4001203(arg1)
    print("OnSubFailed4001203")
end

function Quest40012:OnSubStart4001204(arg1)
    print("OnSubStart4001204")
    actorMgr:CreateActorWithPos("Q40012AlbedoTrigger", "Actor/Gadget/Q40012AlbedoTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012AlbedoSearch").pos, sceneData:GetDummyPoint(4, "Q40012AlbedoSearch").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001204(arg1)
    print("OnSubFinish4001204")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 4)
end

function Quest40012:OnSubFailed4001204(arg1)
    print("OnSubFailed4001204")
end

function Quest40012:OnSubStart4001205(arg1)
    print("OnSubStart4001205")
end

function Quest40012:OnSubFinish4001205(arg1)
    print("OnSubFinish4001205")
end

function Quest40012:OnSubFailed4001205(arg1)
    print("OnSubFailed4001205")
end

function Quest40012:OnSubStart4001206(arg1)
    print("OnSubStart4001206")
    actorMgr:CreateActorWithPos("Q40012RazorTrigger", "Actor/Gadget/Q40012RazorTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012Razor").pos, sceneData:GetDummyPoint(4, "Q40012Razor").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001206(arg1)
    print("OnSubFinish4001206")
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 4)
end

function Quest40012:OnSubFailed4001206(arg1)
    print("OnSubFailed4001206")
end

function Quest40012:OnSubStart4001207(arg1)
    print("OnSubStart4001207")
    self:CreateQuestNpc(arg1, npcs.RazorData.id, 1)
end

function Quest40012:OnSubFinish4001207(arg1)
    print("OnSubFinish4001207")
end

function Quest40012:OnSubFailed4001207(arg1)
    print("OnSubFailed4001207")
end

function Quest40012:OnSubStart4001208(arg1)
    print("OnSubStart4001208")
end

function Quest40012:OnSubFinish4001208(arg1)
    print("OnSubFinish4001208")
    self:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "")
end

function Quest40012:OnSubFailed4001208(arg1)
    print("OnSubFailed4001208")
end

function Quest40012:OnSubStart4001209(arg1)
    print("OnSubStart4001209")
    actorMgr:CreateActorWithPos("Q40012PuppetTrigger", "Actor/Gadget/Q40012PuppetTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40011Puppet").pos, sceneData:GetDummyPoint(4, "Q40011Puppet").rot, true, false, 4)
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)
end

function Quest40012:OnSubFinish4001209(arg1)
    print("OnSubFinish4001209")
end

function Quest40012:OnSubFailed4001209(arg1)
    print("OnSubFailed4001209")
end

function Quest40012:OnSubStart4001210(arg1)
    print("OnSubStart4001210")
    self:NpcCreateWithBlackscreenInteractionDelay(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40012:OnSubFinish4001210(arg1)
    print("OnSubFinish4001210")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
end

function Quest40012:OnSubFailed4001210(arg1)
    print("OnSubFailed4001210")
end

function Quest40012:OnSubStart4001211(arg1)
    print("OnSubStart4001211")
end

function Quest40012:OnSubFinish4001211(arg1)
    print("OnSubFinish4001211")
end

function Quest40012:OnSubFailed4001211(arg1)
    print("OnSubFailed4001211")
end

function Quest40012:OnSubStart4001212(arg1)
    print("OnSubStart4001212")
    actorMgr:CreateActorWithPos("Q40012CampSealTrigger", "Actor/Gadget/Q40012CampSealTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012CampSeal").pos, sceneData:GetDummyPoint(4, "Q40012CampSeal").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001212(arg1)
    print("OnSubFinish4001212")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
end

function Quest40012:OnSubFailed4001212(arg1)
    print("OnSubFailed4001212")
end

function Quest40012:OnSubStart4001213(arg1)
    print("OnSubStart4001213")
    actorMgr:CreateActorWithPos("Q40012CampSealGearTrigger", "Actor/Gadget/Q40012CampSealGearTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012CampSealGear").pos, sceneData:GetDummyPoint(4, "Q40012CampSealGear").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001213(arg1)
    print("OnSubFinish4001213")
end

function Quest40012:OnSubFailed4001213(arg1)
    print("OnSubFailed4001213")
end

function Quest40012:OnSubStart4001214(arg1)
    print("OnSubStart4001214")
    actorMgr:CreateActorWithPos("Q40012CampTrigger2", "Actor/Gadget/Q40012CampTrigger2", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012Camp").pos, sceneData:GetDummyPoint(4, "Q40012Camp").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001214(arg1)
    print("OnSubFinish4001214")
    self:ActorDestroy("Q40012CampTrigger2")
end

function Quest40012:OnSubFailed4001214(arg1)
    print("OnSubFailed4001214")
end

function Quest40012:OnSubStart4001216(arg1)
    print("OnSubStart4001216")
end

function Quest40012:OnSubFinish4001216(arg1)
    print("OnSubFinish4001216")
end

function Quest40012:OnSubFailed4001216(arg1)
    print("OnSubFailed4001216")
end

function Quest40012:OnSubStart4001217(arg1)
    print("OnSubStart4001217")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc10090Data.id, 1, npcs.Npc10090Data.alias)
end

function Quest40012:OnSubFinish4001217(arg1)
    print("OnSubFinish4001217")
    self:SafeDestroyQuestNpc(npcs.Npc10090Data.alias, 4)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(4, function(arg1)
            actorUtils.ShowSummerTimeStagePage(3)
        end)
    end)
end

function Quest40012:OnSubFailed4001217(arg1)
    print("OnSubFailed4001217")
end

function Quest40012:OnSubStart4001218(arg1)
    print("OnSubStart4001218")
end

function Quest40012:OnSubFinish4001218(arg1)
    print("OnSubFinish4001218")
end

function Quest40012:OnSubFailed4001218(arg1)
    print("OnSubFailed4001218")
end

function Quest40012:OnSubStart4001215(arg1)
    print("OnSubStart4001215")
    actorMgr:CreateActorWithPos("Q40012CampTrigger", "Actor/Gadget/Q40012CampTrigger", 70900002, 0, sceneData:GetDummyPoint(4, "Q40012Camp").pos, sceneData:GetDummyPoint(4, "Q40012Camp").rot, true, false, 4)
end

function Quest40012:OnSubFinish4001215(arg1)
    print("OnSubFinish4001215")
    self:ActorDestroy("Q40012CampTrigger")
end

function Quest40012:OnSubFailed4001215(arg1)
    print("OnSubFailed4001215")
end

return Quest40012
