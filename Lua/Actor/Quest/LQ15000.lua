require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15000 = class("Quest15000", QuestActorProxy)
Quest15000.defaultAlias = "Quest15000"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest15000:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest15000:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1500012"] = self.OnSubStart1500012,
        ["1500001"] = self.OnSubStart1500001,
        ["1500002"] = self.OnSubStart1500002,
        ["1500003"] = self.OnSubStart1500003,
        ["1500004"] = self.OnSubStart1500004,
        ["1500005"] = self.OnSubStart1500005,
        ["1500011"] = self.OnSubStart1500011,
        ["1500006"] = self.OnSubStart1500006,
        ["1500007"] = self.OnSubStart1500007
    }
end

function Quest15000:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1500012"] = self.OnSubFinish1500012,
        ["1500001"] = self.OnSubFinish1500001,
        ["1500002"] = self.OnSubFinish1500002,
        ["1500003"] = self.OnSubFinish1500003,
        ["1500004"] = self.OnSubFinish1500004,
        ["1500005"] = self.OnSubFinish1500005,
        ["1500011"] = self.OnSubFinish1500011,
        ["1500006"] = self.OnSubFinish1500006,
        ["1500007"] = self.OnSubFinish1500007
    }
end

function Quest15000:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15000:Start()
    print("Start")
end

function Quest15000:OnDestroy()
    print("OnDestroy")
end

function Quest15000:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15000:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15000:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15000:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest15000:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest15000:OnSubStart1500012(arg1)
    print("OnSubStart1500012")
    this:CreateQuestNpc(arg1, npcs.Npc14151Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14152Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q1500012Trigger", "Actor/Gadget/Q1500012Trigger", 70900002, 0, points.TPos_Q1500012Trigger.pos, points.TPos_Q1500012Trigger.rot, true, false, 3)
end

function Quest15000:OnSubFinish1500012(arg1)
    print("OnSubFinish1500012")
    this:SetNavigationByMainId(15000, true)
end

function Quest15000:OnSubStart1500001(arg1)
    print("OnSubStart1500001")
    this:NpcCreateWithNpcTrigger(npcs.Npc14151Data.id, 1500001, 0, 10)
    this:CreateQuestNpc(arg1, npcs.Npc14152Data.id, 0, false, 0)
end

function Quest15000:OnSubFinish1500001(arg1)
    print("OnSubFinish1500001")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Search)
    end)
end

function Quest15000:OnSubStart1500002(arg1)
    print("OnSubStart1500002")
end

function Quest15000:OnSubFinish1500002(arg1)
    print("OnSubFinish1500002")
end

function Quest15000:OnSubStart1500003(arg1)
    print("OnSubStart1500003")
    this:CreateQuestNpc(arg1, npcs.Npc14146Data.id, 0, false, 0)
end

function Quest15000:OnSubFinish1500003(arg1)
    print("OnSubFinish1500003")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14146Data.alias)
end

function Quest15000:OnSubStart1500004(arg1)
    print("OnSubStart1500004")
    this:CreateQuestNpc(arg1, npcs.Npc14147Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14147Data.alias):DoFreeStyle(5, true, nil, true, true, false, false)
end

function Quest15000:OnSubFinish1500004(arg1)
    print("OnSubFinish1500004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14147Data.alias)
end

function Quest15000:OnSubStart1500005(arg1)
    print("OnSubStart1500005")
    this:CreateQuestNpc(arg1, npcs.Npc14148Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14148Data.alias):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14221Data.id, 0, false, 0)
end

function Quest15000:OnSubFinish1500005(arg1)
    print("OnSubFinish1500005")
    this:SafeDestroyQuestNpc(npcs.Npc14148Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221Data.alias, 3)
end

function Quest15000:OnSubStart1500011(arg1)
    print("OnSubStart1500011")
end

function Quest15000:OnSubFinish1500011(arg1)
    print("OnSubFinish1500011")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:QuestNarratorTask(datas.TalkOver)
    end)
end

function Quest15000:OnSubStart1500006(arg1)
    print("OnSubStart1500006")
end

function Quest15000:OnSubFinish1500006(arg1)
    print("OnSubFinish1500006")
end

function Quest15000:OnSubStart1500007(arg1)
    print("OnSubStart1500007")
end

function Quest15000:OnSubFinish1500007(arg1)
    print("OnSubFinish1500007")
    this:SafeDestroyQuestNpc(npcs.Npc14151Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14152Data.alias, 3)
end

return Quest15000
