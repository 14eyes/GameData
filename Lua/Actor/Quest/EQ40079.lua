require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40079 = class("Quest40079", QuestActorProxy)
Quest40079.defaultAlias = "Quest40079"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40079:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40079:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4007901"] = self.OnSubStart4007901,
        ["4007902"] = self.OnSubStart4007902,
        ["4007903"] = self.OnSubStart4007903,
        ["4007909"] = self.OnSubStart4007909,
        ["4007904"] = self.OnSubStart4007904,
        ["4007905"] = self.OnSubStart4007905,
        ["4007911"] = self.OnSubStart4007911,
        ["4007906"] = self.OnSubStart4007906,
        ["4007907"] = self.OnSubStart4007907,
        ["4007908"] = self.OnSubStart4007908,
        ["4007910"] = self.OnSubStart4007910,
        ["4007913"] = self.OnSubStart4007913,
        ["4007912"] = self.OnSubStart4007912
    }
end

function Quest40079:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4007901"] = self.OnSubFinish4007901,
        ["4007902"] = self.OnSubFinish4007902,
        ["4007903"] = self.OnSubFinish4007903,
        ["4007909"] = self.OnSubFinish4007909,
        ["4007904"] = self.OnSubFinish4007904,
        ["4007905"] = self.OnSubFinish4007905,
        ["4007911"] = self.OnSubFinish4007911,
        ["4007906"] = self.OnSubFinish4007906,
        ["4007907"] = self.OnSubFinish4007907,
        ["4007908"] = self.OnSubFinish4007908,
        ["4007910"] = self.OnSubFinish4007910,
        ["4007913"] = self.OnSubFinish4007913,
        ["4007912"] = self.OnSubFinish4007912
    }
end

function Quest40079:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40079:Start()
    print("Start")
end

function Quest40079:OnDestroy()
    print("OnDestroy")
end

function Quest40079:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40079:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40079:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc30241Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4007907Trigger", 3, false)
    actorMgr:DestroyNpcActorByAlias("Wendy40078")
    self:ActorDestroy("Q4007813Trigger")
end

function Quest40079:NpcCreateWithTrigger(arg1, arg2, arg3)
    self:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5)
end

function Quest40079:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40079:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4007903 then
        actorUtils.FinishQuestID(false, 4007909)
    elseif arg1 == 400790801 then
        actorUtils.FinishQuestID(false, 4007910)
    elseif arg1 == 4007905 then
        actorUtils.FinishQuestID(false, 4007911)
    elseif arg1 == 400790802 then
        actorUtils.FinishQuestID(false, 4007913)
    elseif arg1 == 40079 then
        self:StopNarrator()
        self:ClearNarratorTask()
    end
end

function Quest40079:OnSubStart4007901(arg1)
    print("OnSubStart4007901")
end

function Quest40079:OnSubFinish4007901(arg1)
    print("OnSubFinish4007901")
    self:AfterMainPageActiveSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId4007901)
    end)
end

function Quest40079:OnSubStart4007902(arg1)
    print("OnSubStart4007902")
    if self:GetQuestVar(4007902, 0) == 0 then
        self:AfterMainPageActiveSafeCall(function(arg1)
            arg1:CallDelay(5, function(arg1)
                actorMgr:DestroyNpcActorByAlias("Wendy40078")
                arg1:CreateQuestNpcWithTriggerBlack("Q4007902NPCTrigger", 4007902, 1011, 1, 26, 1)
            end)
        end)

        self:SetQuestVarByMainId(0, 1)
    else
        if self:GetQuestVar(4007902, 0) == 1 then
            self:CreateQuestNpcWithTriggerBlack("Q4007902NPCTrigger", 4007902, 1011, 1, 26, 1)
        end
    end
end

function Quest40079:OnSubFinish4007902(arg1)
    print("OnSubFinish4007902")
    self:StopNarrator()
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
end

function Quest40079:OnSubStart4007903(arg1)
    print("OnSubStart4007903")
    self:CreateQuestNpc(arg1, npcs.Npc30241Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc30240Data.id, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30241Data.alias)
    questNpcActor:DoFreeStateTrigger()
    self:CreateQuestNpcWithTriggerBlack("Q4007903NPCTrigger", 4007903, 1011, 1, 35, 1)
    questNpcActor:DoFreeStyle(1070, true, nil, true, true, false, false)
    self:GetQuestNpcActor(npcs.Npc30240Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40079:OnSubFinish4007903(arg1)
    print("OnSubFinish4007903")
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30240Data.alias, 3)
end

function Quest40079:OnSubStart4007909(arg1)
    print("OnSubStart4007909")
end

function Quest40079:OnSubFinish4007909(arg1)
    print("OnSubFinish4007909")
end

function Quest40079:OnSubStart4007904(arg1)
    print("OnSubStart4007904")
    self:GetQuestNpcActor(npcs.Npc30241Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest40079:OnSubFinish4007904(arg1)
    print("OnSubFinish4007904")
end

function Quest40079:OnSubStart4007905(arg1)
    print("OnSubStart4007905")
    self:CallDelay(2, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc30241Data.alias):DoFreeStateTrigger()
        arg1:CreateQuestNpcWithTriggerBlack("Q4007905NPCTrigger", 4007905, 1011, 1, 20, 1)
    end)
end

function Quest40079:OnSubFinish4007905(arg1)
    print("OnSubFinish4007905")
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30241Data.alias, 3)
    self:ActorDestroy("Q4007905NPCTrigger")
end

function Quest40079:OnSubStart4007911(arg1)
    print("OnSubStart4007911")
end

function Quest40079:OnSubFinish4007911(arg1)
    print("OnSubFinish4007911")
end

function Quest40079:OnSubStart4007906(arg1)
    print("OnSubStart4007906")
    self:NpcCreateWithTrigger(npcs.GaiaData.id, 4007906, 2)
    self:CreateQuestNpc(arg1, npcs.LisaData.id, 3)
end

function Quest40079:OnSubFinish4007906(arg1)
    print("OnSubFinish4007906")
    self:SafeDestroyQuestNpc(npcs.GaiaData.alias, 1004)
end

function Quest40079:OnSubStart4007907(arg1)
    print("OnSubStart4007907")
    actorMgr:CreateActorWithPos("Q4007907Trigger", "Actor/Gadget/Q4007907Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4007907_guide").pos, sceneData:GetDummyPoint(3, "Q4007907_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.RazorData.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.LisaData.alias):DisableInteeHeadCtrl(true)
end

function Quest40079:OnSubFinish4007907(arg1)
    print("OnSubFinish4007907")
    self:NarratorOnlyTaskByData(datas.NarratorWithId4007902)
    self:SafeDestroyQuestNpc(npcs.RazorData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.LisaData.alias, 1004)
    self:GetQuestNpcActor(npcs.RazorData.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.LisaData.alias):DisableInteeHeadCtrl(false)
end

function Quest40079:OnSubStart4007908(arg1)
    print("OnSubStart4007908")
    self:NpcCreateWithTrigger(npcs.DilucData.id, 4007908, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 3)
end

function Quest40079:OnSubFinish4007908(arg1)
    print("OnSubFinish4007908")
end

function Quest40079:OnSubStart4007910(arg1)
    print("OnSubStart4007910")
end

function Quest40079:OnSubFinish4007910(arg1)
    print("OnSubFinish4007910")
end

function Quest40079:OnSubStart4007913(arg1)
    print("OnSubStart4007913")
end

function Quest40079:OnSubFinish4007913(arg1)
    print("OnSubFinish4007913")
end

function Quest40079:OnSubStart4007912(arg1)
    print("OnSubStart4007912")
end

function Quest40079:OnSubFinish4007912(arg1)
    print("OnSubFinish4007912")
    self:SafeDestroyQuestNpc(npcs.DilucData.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc1531Data.alias, 1018)
end

return Quest40079
