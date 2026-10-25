require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74003 = class("Quest74003", QuestActorProxy)
Quest74003.defaultAlias = "Quest74003"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74003:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7400330"] = self.OnSubStart7400330,
        ["7400303"] = self.OnSubStart7400303,
        ["7400336"] = self.OnSubStart7400336,
        ["7400304"] = self.OnSubStart7400304,
        ["7400305"] = self.OnSubStart7400305,
        ["7400339"] = self.OnSubStart7400339,
        ["7400307"] = self.OnSubStart7400307,
        ["7400331"] = self.OnSubStart7400331,
        ["7400306"] = self.OnSubStart7400306,
        ["7400308"] = self.OnSubStart7400308,
        ["7400309"] = self.OnSubStart7400309,
        ["7400342"] = self.OnSubStart7400342,
        ["7400343"] = self.OnSubStart7400343,
        ["7400311"] = self.OnSubStart7400311,
        ["7400328"] = self.OnSubStart7400328,
        ["7400337"] = self.OnSubStart7400337,
        ["7400338"] = self.OnSubStart7400338,
        ["7400340"] = self.OnSubStart7400340,
        ["7400312"] = self.OnSubStart7400312,
        ["7400332"] = self.OnSubStart7400332,
        ["7400313"] = self.OnSubStart7400313,
        ["7400344"] = self.OnSubStart7400344,
        ["7400314"] = self.OnSubStart7400314,
        ["7400315"] = self.OnSubStart7400315,
        ["7400316"] = self.OnSubStart7400316,
        ["7400317"] = self.OnSubStart7400317,
        ["7400318"] = self.OnSubStart7400318,
        ["7400319"] = self.OnSubStart7400319,
        ["7400320"] = self.OnSubStart7400320,
        ["7400321"] = self.OnSubStart7400321,
        ["7400322"] = self.OnSubStart7400322,
        ["7400323"] = self.OnSubStart7400323,
        ["7400324"] = self.OnSubStart7400324,
        ["7400325"] = self.OnSubStart7400325,
        ["7400345"] = self.OnSubStart7400345,
        ["7400346"] = self.OnSubStart7400346,
        ["7400326"] = self.OnSubStart7400326,
        ["7400333"] = self.OnSubStart7400333,
        ["7400327"] = self.OnSubStart7400327,
        ["7400335"] = self.OnSubStart7400335,
        ["7400341"] = self.OnSubStart7400341,
        ["7400334"] = self.OnSubStart7400334,
        ["7400310"] = self.OnSubStart7400310,
        ["7400329"] = self.OnSubStart7400329,
        ["7400301"] = self.OnSubStart7400301
    }
end

function Quest74003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7400330"] = self.OnSubFinish7400330,
        ["7400303"] = self.OnSubFinish7400303,
        ["7400336"] = self.OnSubFinish7400336,
        ["7400304"] = self.OnSubFinish7400304,
        ["7400305"] = self.OnSubFinish7400305,
        ["7400339"] = self.OnSubFinish7400339,
        ["7400307"] = self.OnSubFinish7400307,
        ["7400331"] = self.OnSubFinish7400331,
        ["7400306"] = self.OnSubFinish7400306,
        ["7400308"] = self.OnSubFinish7400308,
        ["7400309"] = self.OnSubFinish7400309,
        ["7400342"] = self.OnSubFinish7400342,
        ["7400343"] = self.OnSubFinish7400343,
        ["7400311"] = self.OnSubFinish7400311,
        ["7400328"] = self.OnSubFinish7400328,
        ["7400337"] = self.OnSubFinish7400337,
        ["7400338"] = self.OnSubFinish7400338,
        ["7400340"] = self.OnSubFinish7400340,
        ["7400312"] = self.OnSubFinish7400312,
        ["7400332"] = self.OnSubFinish7400332,
        ["7400313"] = self.OnSubFinish7400313,
        ["7400344"] = self.OnSubFinish7400344,
        ["7400314"] = self.OnSubFinish7400314,
        ["7400315"] = self.OnSubFinish7400315,
        ["7400316"] = self.OnSubFinish7400316,
        ["7400317"] = self.OnSubFinish7400317,
        ["7400318"] = self.OnSubFinish7400318,
        ["7400319"] = self.OnSubFinish7400319,
        ["7400320"] = self.OnSubFinish7400320,
        ["7400321"] = self.OnSubFinish7400321,
        ["7400322"] = self.OnSubFinish7400322,
        ["7400323"] = self.OnSubFinish7400323,
        ["7400324"] = self.OnSubFinish7400324,
        ["7400325"] = self.OnSubFinish7400325,
        ["7400345"] = self.OnSubFinish7400345,
        ["7400346"] = self.OnSubFinish7400346,
        ["7400326"] = self.OnSubFinish7400326,
        ["7400333"] = self.OnSubFinish7400333,
        ["7400327"] = self.OnSubFinish7400327,
        ["7400335"] = self.OnSubFinish7400335,
        ["7400341"] = self.OnSubFinish7400341,
        ["7400334"] = self.OnSubFinish7400334,
        ["7400310"] = self.OnSubFinish7400310,
        ["7400329"] = self.OnSubFinish7400329,
        ["7400301"] = self.OnSubFinish7400301
    }
end

function Quest74003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74003:Start()
    print("Start")
end

function Quest74003:OnDestroy()
    print("OnDestroy")
end

function Quest74003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(0, 2)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 10 then
        actorUtils.FinishQuestID(false, 7400344)
    elseif arg1 == 20 then
        actorUtils.FinishQuestID(false, 7400340)
    end
end

function Quest74003:OnSubStart7400330(arg1)
    print("OnSubStart7400330")
    actorMgr:CreateActorWithPos("Q7400330Trigger", "Actor/Gadget/Q7400330Trigger", 70900002, 0, {x = 3904.273, y = -117.662, z = 4815.004}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400330(arg1)
    print("OnSubFinish7400330")
    self:SetNavigationByMainId(74003, true)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400303(arg1)
    print("OnSubStart7400303")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400303(arg1)
    print("OnSubFinish7400303")
    this:NarratorOnlyTaskByData(datas.Narrator_740039901)
    self:SetNavigationByMainId(74003, true)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400336(arg1)
    print("OnSubStart7400336")
    actorMgr:CreateActorWithPos("Q7400336Trigger", "Actor/Gadget/Q7400336Trigger", 70900002, 0, {x = 3869.724, y = -116.675, z = 4810.914}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74003:OnSubFinish7400336(arg1)
    print("OnSubFinish7400336")
    self:SetNavigationByMainId(74003, true)
end

function Quest74003:OnSubStart7400304(arg1)
    print("OnSubStart7400304")
    actorMgr:CreateActorWithPos("Q7400304Trigger", "Actor/Gadget/Q7400304Trigger", 70900002, 0, {x = 3789.797, y = -156.788, z = 4827.03}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400304(arg1)
    print("OnSubFinish7400304")
    self:SetNavigationByMainId(74003, true)
end

function Quest74003:OnSubStart7400305(arg1)
    print("OnSubStart7400305")
end

function Quest74003:OnSubFinish7400305(arg1)
    print("OnSubFinish7400305")
end

function Quest74003:OnSubStart7400339(arg1)
    print("OnSubStart7400339")
    actorMgr:CreateActorWithPos("Q7400339Trigger", "Actor/Gadget/Q7400339Trigger", 70900002, 0, points.TPos_Q7400339Trigger.pos, points.TPos_Q7400339Trigger.rot, true, false)
end

function Quest74003:OnSubFinish7400339(arg1)
    print("OnSubFinish7400339")
end

function Quest74003:OnSubStart7400307(arg1)
    print("OnSubStart7400307")
end

function Quest74003:OnSubFinish7400307(arg1)
    print("OnSubFinish7400307")
end

function Quest74003:OnSubStart7400331(arg1)
    print("OnSubStart7400331")
    actorMgr:CreateActorWithPos("Q7400331Trigger", "Actor/Gadget/Q7400331Trigger", 70900002, 0, {x = 3818.798, y = -156.861, z = 4900.101}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400331(arg1)
    print("OnSubFinish7400331")
end

function Quest74003:OnSubStart7400306(arg1)
    print("OnSubStart7400306")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400306(arg1)
    print("OnSubFinish7400306")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400308(arg1)
    print("OnSubStart7400308")
end

function Quest74003:OnSubFinish7400308(arg1)
    print("OnSubFinish7400308")
end

function Quest74003:OnSubStart7400309(arg1)
    print("OnSubStart7400309")
    actorMgr:CreateActorWithPos("Q7400309Trigger", "Actor/Gadget/Q7400309Trigger", 70900002, 0, {x = 3871.481, y = -135.748, z = 4925.866}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74003:OnSubFinish7400309(arg1)
    print("OnSubFinish7400309")
end

function Quest74003:OnSubStart7400342(arg1)
    print("OnSubStart7400342")
end

function Quest74003:OnSubFinish7400342(arg1)
    print("OnSubFinish7400342")
end

function Quest74003:OnSubStart7400343(arg1)
    print("OnSubStart7400343")
end

function Quest74003:OnSubFinish7400343(arg1)
    print("OnSubFinish7400343")
end

function Quest74003:OnSubStart7400311(arg1)
    print("OnSubStart7400311")
    this:CreateQuestNpc(arg1, npcs.Npc21119Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21120Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2A", "Actor/Gadget/Q7400311TriggerF2A", 70900002, 0, {x = 3904.224, y = -132.0, z = 4915.716}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2B", "Actor/Gadget/Q7400311TriggerF2B", 70900002, 0, {x = 3910.964, y = -132.08, z = 4925.482}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2C", "Actor/Gadget/Q7400311TriggerF2C", 70900002, 0, {x = 3904.662, y = -131.994, z = 4935.399}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3A", "Actor/Gadget/Q7400311TriggerF3A", 70900002, 0, {x = 3904.327, y = -146.965, z = 4916.047}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3B", "Actor/Gadget/Q7400311TriggerF3B", 70900002, 0, {x = 3911.324, y = -147.079, z = 4906.037}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3C", "Actor/Gadget/Q7400311TriggerF3C", 70900002, 0, {x = 3906.219, y = -147.062, z = 4895.488}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74003:OnSubFinish7400311(arg1)
    print("OnSubFinish7400311")
    self:SetNavigationByMainId(74003, true)
    this:ActorDestroy("Q7400311TriggerF2A")
    this:ActorDestroy("Q7400311TriggerF2B")
    this:ActorDestroy("Q7400311TriggerF2C")
    this:ActorDestroy("Q7400311TriggerF3A")
    this:ActorDestroy("Q7400311TriggerF3B")
    this:ActorDestroy("Q7400311TriggerF3C")
    this:SafeDestroyQuestNpc(npcs.Npc21119Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21120Data.alias, 3)
end

function Quest74003:OnSubStart7400328(arg1)
    print("OnSubStart7400328")
end

function Quest74003:OnSubFinish7400328(arg1)
    print("OnSubFinish7400328")
end

function Quest74003:OnSubStart7400337(arg1)
    print("OnSubStart7400337")
    actorMgr:CreateActorWithPos("Q7400337Trigger", "Actor/Gadget/Q7400337Trigger", 70900002, 0, points.TPos_Q7400337Trigger.pos, points.TPos_Q7400337Trigger.rot, true, false)
end

function Quest74003:OnSubFinish7400337(arg1)
    print("OnSubFinish7400337")
end

function Quest74003:OnSubStart7400338(arg1)
    print("OnSubStart7400338")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400338(arg1)
    print("OnSubFinish7400338")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400340(arg1)
    print("OnSubStart7400340")
end

function Quest74003:OnSubFinish7400340(arg1)
    print("OnSubFinish7400340")
end

function Quest74003:OnSubStart7400312(arg1)
    print("OnSubStart7400312")
    this:CreateQuestNpc(arg1, npcs.Npc21119Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21120Data.id, 0)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2A", "Actor/Gadget/Q7400311TriggerF2A", 70900002, 0, {x = 3904.224, y = -132.0, z = 4915.716}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2B", "Actor/Gadget/Q7400311TriggerF2B", 70900002, 0, {x = 3910.964, y = -132.08, z = 4925.482}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF2C", "Actor/Gadget/Q7400311TriggerF2C", 70900002, 0, {x = 3904.662, y = -131.994, z = 4935.399}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3A", "Actor/Gadget/Q7400311TriggerF3A", 70900002, 0, {x = 3904.327, y = -146.965, z = 4916.047}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3B", "Actor/Gadget/Q7400311TriggerF3B", 70900002, 0, {x = 3911.324, y = -147.079, z = 4906.037}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q7400311TriggerF3C", "Actor/Gadget/Q7400311TriggerF3C", 70900002, 0, {x = 3906.219, y = -147.062, z = 4895.488}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74003:OnSubFinish7400312(arg1)
    print("OnSubFinish7400312")
    this:ActorDestroy("Q7400311TriggerF2A")
    this:ActorDestroy("Q7400311TriggerF2B")
    this:ActorDestroy("Q7400311TriggerF2C")
    this:ActorDestroy("Q7400311TriggerF3A")
    this:ActorDestroy("Q7400311TriggerF3B")
    this:ActorDestroy("Q7400311TriggerF3C")
    this:SafeDestroyQuestNpc(npcs.Npc21119Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21120Data.alias, 3)
end

function Quest74003:OnSubStart7400332(arg1)
    print("OnSubStart7400332")
    actorMgr:CreateActorWithPos("Q7400332Trigger", "Actor/Gadget/Q7400332Trigger", 70900002, 0, points.TPos_Q7400332Trigger.pos, points.TPos_Q7400332Trigger.rot, true, false, 3)
end

function Quest74003:OnSubFinish7400332(arg1)
    print("OnSubFinish7400332")
end

function Quest74003:OnSubStart7400313(arg1)
    print("OnSubStart7400313")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400313(arg1)
    print("OnSubFinish7400313")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400344(arg1)
    print("OnSubStart7400344")
end

function Quest74003:OnSubFinish7400344(arg1)
    print("OnSubFinish7400344")
end

function Quest74003:OnSubStart7400314(arg1)
    print("OnSubStart7400314")
end

function Quest74003:OnSubFinish7400314(arg1)
    print("OnSubFinish7400314")
end

function Quest74003:OnSubStart7400315(arg1)
    print("OnSubStart7400315")
    actorMgr:CreateActorWithPos("Q7400315Trigger", "Actor/Gadget/Q7400315Trigger", 70900002, 0, {x = 3673.371, y = -557.523, z = 4617.341}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400315(arg1)
    print("OnSubFinish7400315")
end

function Quest74003:OnSubStart7400316(arg1)
    print("OnSubStart7400316")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400316(arg1)
    print("OnSubFinish7400316")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400317(arg1)
    print("OnSubStart7400317")
    actorMgr:CreateActorWithPos("Q7400317Trigger", "Actor/Gadget/Q7400317Trigger", 70900002, 0, {x = 3674.673, y = -559.84, z = 4613.973}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400317(arg1)
    print("OnSubFinish7400317")
end

function Quest74003:OnSubStart7400318(arg1)
    print("OnSubStart7400318")
end

function Quest74003:OnSubFinish7400318(arg1)
    print("OnSubFinish7400318")
end

function Quest74003:OnSubStart7400319(arg1)
    print("OnSubStart7400319")
    actorMgr:CreateActorWithPos("Q7400319Trigger", "Actor/Gadget/Q7400319Trigger", 70900002, 0, {x = 3674.365, y = -559.84, z = 4612.482}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400319(arg1)
    print("OnSubFinish7400319")
end

function Quest74003:OnSubStart7400320(arg1)
    print("OnSubStart7400320")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400320(arg1)
    print("OnSubFinish7400320")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400321(arg1)
    print("OnSubStart7400321")
    actorMgr:CreateActorWithPos("Q7400321Trigger", "Actor/Gadget/Q7400321Trigger", 70900002, 0, {x = 3727.524, y = -550.316, z = 4618.046}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400321(arg1)
    print("OnSubFinish7400321")
    this:NarratorOnlyTaskByData(datas.Narrator_740039902)
end

function Quest74003:OnSubStart7400322(arg1)
    print("OnSubStart7400322")
end

function Quest74003:OnSubFinish7400322(arg1)
    print("OnSubFinish7400322")
end

function Quest74003:OnSubStart7400323(arg1)
    print("OnSubStart7400323")
end

function Quest74003:OnSubFinish7400323(arg1)
    print("OnSubFinish7400323")
end

function Quest74003:OnSubStart7400324(arg1)
    print("OnSubStart7400324")
end

function Quest74003:OnSubFinish7400324(arg1)
    print("OnSubFinish7400324")
end

function Quest74003:OnSubStart7400325(arg1)
    print("OnSubStart7400325")
end

function Quest74003:OnSubFinish7400325(arg1)
    print("OnSubFinish7400325")
end

function Quest74003:OnSubStart7400345(arg1)
    print("OnSubStart7400345")
end

function Quest74003:OnSubFinish7400345(arg1)
    print("OnSubFinish7400345")
end

function Quest74003:OnSubStart7400346(arg1)
    print("OnSubStart7400346")
end

function Quest74003:OnSubFinish7400346(arg1)
    print("OnSubFinish7400346")
    this:NarratorOnlyTaskByData(datas.Narrator_740039904)
end

function Quest74003:OnSubStart7400326(arg1)
    print("OnSubStart7400326")
end

function Quest74003:OnSubFinish7400326(arg1)
    print("OnSubFinish7400326")
end

function Quest74003:OnSubStart7400333(arg1)
    print("OnSubStart7400333")
    actorMgr:CreateActorWithPos("Q7400333Trigger", "Actor/Gadget/Q7400333Trigger", 70900002, 0, points.TPos_Q7400333Trigger.pos, points.TPos_Q7400333Trigger.rot, true, false, 3)
end

function Quest74003:OnSubFinish7400333(arg1)
    print("OnSubFinish7400333")
end

function Quest74003:OnSubStart7400327(arg1)
    print("OnSubStart7400327")
    this:ShowBlackScreenWithDialogText(0.5, 0, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
        this:RequestInteraction(npcs.Npc20995Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest74003:OnSubFinish7400327(arg1)
    print("OnSubFinish7400327")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400335(arg1)
    print("OnSubStart7400335")
    actorMgr:CreateActorWithPos("Q7400335Trigger", "Actor/Gadget/Q7400335Trigger", 70900002, 0, {x = 3824.363, y = -565.893, z = 4657.801}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74003:OnSubFinish7400335(arg1)
    print("OnSubFinish7400335")
end

function Quest74003:OnSubStart7400341(arg1)
    print("OnSubStart7400341")
    this:CreateQuestNpc(arg1, npcs.Npc20995Data.id, 0)
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74003:OnSubFinish7400341(arg1)
    print("OnSubFinish7400341")
    self:SetNavigationByMainId(74004, true)
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 3)
end

function Quest74003:OnSubStart7400334(arg1)
    print("OnSubStart7400334")
    actorMgr:CreateActorWithPos("Q7400334Trigger", "Actor/Gadget/Q7400334Trigger", 70900002, 0, points.TPos_Q7400334Trigger.pos, points.TPos_Q7400334Trigger.rot, true, false, 3)
end

function Quest74003:OnSubFinish7400334(arg1)
    print("OnSubFinish7400334")
end

function Quest74003:OnSubStart7400310(arg1)
    print("OnSubStart7400310")
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74003:OnSubFinish7400310(arg1)
    print("OnSubFinish7400310")
end

function Quest74003:OnSubStart7400329(arg1)
    print("OnSubStart7400329")
    actorMgr:CreateActorWithPos("Q7400329Trigger", "Actor/Gadget/Q7400329Trigger", 70900002, 0, {x = 3903.938, y = -120.861, z = 4943.128}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74003:OnSubFinish7400329(arg1)
    print("OnSubFinish7400329")
    self:SetNavigationByMainId(74003, true)
end

function Quest74003:OnSubStart7400301(arg1)
    print("OnSubStart7400301")
    this:RequestInteraction(npcs.Npc20995Data.alias)
end

function Quest74003:OnSubFinish7400301(arg1)
    print("OnSubFinish7400301")
end

return Quest74003
