require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72155 = class("Quest72155", QuestActorProxy)
Quest72155.defaultAlias = "Quest72155"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72155:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72155:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215517"] = self.OnSubStart7215517,
        ["7215518"] = self.OnSubStart7215518,
        ["7215519"] = self.OnSubStart7215519,
        ["7215501"] = self.OnSubStart7215501,
        ["7215502"] = self.OnSubStart7215502,
        ["7215503"] = self.OnSubStart7215503,
        ["7215504"] = self.OnSubStart7215504,
        ["7215520"] = self.OnSubStart7215520,
        ["7215521"] = self.OnSubStart7215521,
        ["7215526"] = self.OnSubStart7215526,
        ["7215505"] = self.OnSubStart7215505,
        ["7215525"] = self.OnSubStart7215525,
        ["7215522"] = self.OnSubStart7215522,
        ["7215506"] = self.OnSubStart7215506,
        ["7215507"] = self.OnSubStart7215507,
        ["7215508"] = self.OnSubStart7215508,
        ["7215509"] = self.OnSubStart7215509,
        ["7215510"] = self.OnSubStart7215510,
        ["7215511"] = self.OnSubStart7215511,
        ["7215512"] = self.OnSubStart7215512,
        ["7215527"] = self.OnSubStart7215527,
        ["7215528"] = self.OnSubStart7215528,
        ["7215529"] = self.OnSubStart7215529,
        ["7215530"] = self.OnSubStart7215530,
        ["7215513"] = self.OnSubStart7215513,
        ["7215514"] = self.OnSubStart7215514,
        ["7215515"] = self.OnSubStart7215515,
        ["7215524"] = self.OnSubStart7215524,
        ["7215532"] = self.OnSubStart7215532,
        ["7215523"] = self.OnSubStart7215523,
        ["7215531"] = self.OnSubStart7215531,
        ["7215516"] = self.OnSubStart7215516
    }
end

function Quest72155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215517"] = self.OnSubFinish7215517,
        ["7215518"] = self.OnSubFinish7215518,
        ["7215519"] = self.OnSubFinish7215519,
        ["7215501"] = self.OnSubFinish7215501,
        ["7215502"] = self.OnSubFinish7215502,
        ["7215503"] = self.OnSubFinish7215503,
        ["7215504"] = self.OnSubFinish7215504,
        ["7215520"] = self.OnSubFinish7215520,
        ["7215521"] = self.OnSubFinish7215521,
        ["7215526"] = self.OnSubFinish7215526,
        ["7215505"] = self.OnSubFinish7215505,
        ["7215525"] = self.OnSubFinish7215525,
        ["7215522"] = self.OnSubFinish7215522,
        ["7215506"] = self.OnSubFinish7215506,
        ["7215507"] = self.OnSubFinish7215507,
        ["7215508"] = self.OnSubFinish7215508,
        ["7215509"] = self.OnSubFinish7215509,
        ["7215510"] = self.OnSubFinish7215510,
        ["7215511"] = self.OnSubFinish7215511,
        ["7215512"] = self.OnSubFinish7215512,
        ["7215527"] = self.OnSubFinish7215527,
        ["7215528"] = self.OnSubFinish7215528,
        ["7215529"] = self.OnSubFinish7215529,
        ["7215530"] = self.OnSubFinish7215530,
        ["7215513"] = self.OnSubFinish7215513,
        ["7215514"] = self.OnSubFinish7215514,
        ["7215515"] = self.OnSubFinish7215515,
        ["7215524"] = self.OnSubFinish7215524,
        ["7215532"] = self.OnSubFinish7215532,
        ["7215523"] = self.OnSubFinish7215523,
        ["7215531"] = self.OnSubFinish7215531,
        ["7215516"] = self.OnSubFinish7215516
    }
end

function Quest72155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215517"] = self.OnSubFailed7215517,
        ["7215518"] = self.OnSubFailed7215518,
        ["7215519"] = self.OnSubFailed7215519,
        ["7215501"] = self.OnSubFailed7215501,
        ["7215502"] = self.OnSubFailed7215502,
        ["7215503"] = self.OnSubFailed7215503,
        ["7215504"] = self.OnSubFailed7215504,
        ["7215520"] = self.OnSubFailed7215520,
        ["7215521"] = self.OnSubFailed7215521,
        ["7215526"] = self.OnSubFailed7215526,
        ["7215505"] = self.OnSubFailed7215505,
        ["7215525"] = self.OnSubFailed7215525,
        ["7215522"] = self.OnSubFailed7215522,
        ["7215506"] = self.OnSubFailed7215506,
        ["7215507"] = self.OnSubFailed7215507,
        ["7215508"] = self.OnSubFailed7215508,
        ["7215509"] = self.OnSubFailed7215509,
        ["7215510"] = self.OnSubFailed7215510,
        ["7215511"] = self.OnSubFailed7215511,
        ["7215512"] = self.OnSubFailed7215512,
        ["7215527"] = self.OnSubFailed7215527,
        ["7215528"] = self.OnSubFailed7215528,
        ["7215529"] = self.OnSubFailed7215529,
        ["7215530"] = self.OnSubFailed7215530,
        ["7215513"] = self.OnSubFailed7215513,
        ["7215514"] = self.OnSubFailed7215514,
        ["7215515"] = self.OnSubFailed7215515,
        ["7215524"] = self.OnSubFailed7215524,
        ["7215532"] = self.OnSubFailed7215532,
        ["7215523"] = self.OnSubFailed7215523,
        ["7215531"] = self.OnSubFailed7215531,
        ["7215516"] = self.OnSubFailed7215516
    }
end

function Quest72155:Start()
    print("Start")
end

function Quest72155:OnDestroy()
    print("OnDestroy")
end

function Quest72155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72155:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72155:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72155:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorMgr:GetActor(actorAlias):ShowTutorialDialog(362)
    elseif arg1 == 2 then
    end
end

function Quest72155:OnSubStart7215517(arg1)
    print("OnSubStart7215517")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    actorMgr:CreateActorWithPos("Q7215517Trigger", "Actor/Gadget/Q7215517Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Start").pos, sceneData:GetDummyPoint(3, "WQ72155_Start").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215517(arg1)
    print("OnSubFinish7215517")
end

function Quest72155:OnSubFailed7215517(arg1)
    print("OnSubFailed7215517")
end

function Quest72155:OnSubStart7215518(arg1)
    print("OnSubStart7215518")
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215518(arg1)
    print("OnSubFinish7215518")
end

function Quest72155:OnSubFailed7215518(arg1)
    print("OnSubFailed7215518")
end

function Quest72155:OnSubStart7215519(arg1)
    print("OnSubStart7215519")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215519(arg1)
    print("OnSubFinish7215519")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
end

function Quest72155:OnSubFailed7215519(arg1)
    print("OnSubFailed7215519")
end

function Quest72155:OnSubStart7215501(arg1)
    print("OnSubStart7215501")
    self:CreateQuestNpc(arg1, npcs.Npc3180Data.id, 1)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215501(arg1)
    print("OnSubFinish7215501")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
end

function Quest72155:OnSubFailed7215501(arg1)
    print("OnSubFailed7215501")
end

function Quest72155:OnSubStart7215502(arg1)
    print("OnSubStart7215502")
    self:CreateQuestNpc(arg1, npcs.Npc3181Data.id, 1)
    actorMgr:CreateActorWithPos("Q7215502Trigger", "Actor/Gadget/Q7215502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_DCPZ").pos, sceneData:GetDummyPoint(3, "WQ72155_DCPZ").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215502(arg1)
    print("OnSubFinish7215502")
end

function Quest72155:OnSubFailed7215502(arg1)
    print("OnSubFailed7215502")
end

function Quest72155:OnSubStart7215503(arg1)
    print("OnSubStart7215503")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3180Data.id, 1)
    self:RequestInteraction(npcs.Npc3181Data.alias)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215503(arg1)
    print("OnSubFinish7215503")
end

function Quest72155:OnSubFailed7215503(arg1)
    print("OnSubFailed7215503")
end

function Quest72155:OnSubStart7215504(arg1)
    print("OnSubStart7215504")
    actorMgr:CreateActorWithPos("Q7215504Trigger", "Actor/Gadget/Q7215504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Zongji01").pos, sceneData:GetDummyPoint(3, "WQ72155_Zongji01").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215504(arg1)
    print("OnSubFinish7215504")
    self:NarratorOnlyTask(datas.PaimonCat01, nil, "")
end

function Quest72155:OnSubFailed7215504(arg1)
    print("OnSubFailed7215504")
end

function Quest72155:OnSubStart7215520(arg1)
    print("OnSubStart7215520")
    actorMgr:CreateActorWithPos("Q7215520Trigger", "Actor/Gadget/Q7215520Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Zongji02").pos, sceneData:GetDummyPoint(3, "WQ72155_Zongji02").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215520(arg1)
    print("OnSubFinish7215520")
    self:NarratorOnlyTask(datas.PaimonCat02, nil, "")
end

function Quest72155:OnSubFailed7215520(arg1)
    print("OnSubFailed7215520")
end

function Quest72155:OnSubStart7215521(arg1)
    print("OnSubStart7215521")
    actorMgr:CreateActorWithPos("Q7215521Trigger", "Actor/Gadget/Q7215521Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Zongji03").pos, sceneData:GetDummyPoint(3, "WQ72155_Zongji03").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215521(arg1)
    print("OnSubFinish7215521")
end

function Quest72155:OnSubFailed7215521(arg1)
    print("OnSubFailed7215521")
end

function Quest72155:OnSubStart7215526(arg1)
    print("OnSubStart7215526")
    actorMgr:CreateActorWithPos("Q7215526Trigger", "Actor/Gadget/Q7215526Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Zongji04").pos, sceneData:GetDummyPoint(3, "WQ72155_Zongji04").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3189Data.alias, 1, true)
end

function Quest72155:OnSubFinish7215526(arg1)
    print("OnSubFinish7215526")
    self:NarratorOnlyTask(datas.PaimonCat03, nil, "")
end

function Quest72155:OnSubFailed7215526(arg1)
    print("OnSubFailed7215526")
end

function Quest72155:OnSubStart7215505(arg1)
    print("OnSubStart7215505")
    actorMgr:CreateActorWithPos("Q7215505Trigger", "Actor/Gadget/Q7215505Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_SS").pos, sceneData:GetDummyPoint(3, "WQ72155_SS").rot, true, false, 3)
    self:LightNotifyTo(npcs.Npc3189Data.alias, 0, true)
end

function Quest72155:OnSubFinish7215505(arg1)
    print("OnSubFinish7215505")
    self:LightNotifyTo(npcs.Npc3189Data.alias, 0, true)
end

function Quest72155:OnSubFailed7215505(arg1)
    print("OnSubFailed7215505")
end

function Quest72155:OnSubStart7215525(arg1)
    print("OnSubStart7215525")
    actorMgr:CreateActorWithPos("Q7215525Trigger", "Actor/Gadget/Q7215525Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_SSmaomiduihua").pos, sceneData:GetDummyPoint(3, "WQ72155_SSmaomiduihua").rot, true, false, 3)
end

function Quest72155:OnSubFinish7215525(arg1)
    print("OnSubFinish7215525")
end

function Quest72155:OnSubFailed7215525(arg1)
    print("OnSubFailed7215525")
end

function Quest72155:OnSubStart7215522(arg1)
    print("OnSubStart7215522")
end

function Quest72155:OnSubFinish7215522(arg1)
    print("OnSubFinish7215522")
    self:NarratorOnlyTask(datas.PaimonSaiqian, nil, "")
end

function Quest72155:OnSubFailed7215522(arg1)
    print("OnSubFailed7215522")
end

function Quest72155:OnSubStart7215506(arg1)
    print("OnSubStart7215506")
    self:CallDelay(6, function(arg1)
        arg1:FinishQuestID(false, 7215506)
    end)
end

function Quest72155:OnSubFinish7215506(arg1)
    print("OnSubFinish7215506")
end

function Quest72155:OnSubFailed7215506(arg1)
    print("OnSubFailed7215506")
end

function Quest72155:OnSubStart7215507(arg1)
    print("OnSubStart7215507")
    actorMgr:CreateActorWithPos("Q7215507Trigger", "Actor/Gadget/Q7215507Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_YSC").pos, sceneData:GetDummyPoint(3, "WQ72155_YSC").rot, true, false, 3)
end

function Quest72155:OnSubFinish7215507(arg1)
    print("OnSubFinish7215507")
    self:NarratorOnlyTask(datas.PaimonCun, nil, "")
end

function Quest72155:OnSubFailed7215507(arg1)
    print("OnSubFailed7215507")
end

function Quest72155:OnSubStart7215508(arg1)
    print("OnSubStart7215508")
end

function Quest72155:OnSubFinish7215508(arg1)
    print("OnSubFinish7215508")
end

function Quest72155:OnSubFailed7215508(arg1)
    print("OnSubFailed7215508")
end

function Quest72155:OnSubStart7215509(arg1)
    print("OnSubStart7215509")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20303Data.id, 1)
    self:CallDelay(0.5, function(arg1)
        actorMgr:CreateActorWithPos("Q7215509Trigger", "Actor/Gadget/Q7215509Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Playerduihua").pos, sceneData:GetDummyPoint(3, "WQ72155_Playerduihua").rot, true, false, 3)
        arg1:GetQuestNpcActor(npcs.Npc20303Data.alias):DoFreeStyle(4180, true, nil, true, true, false)
    end)
end

function Quest72155:OnSubFinish7215509(arg1)
    print("OnSubFinish7215509")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20303Data.alias)
end

function Quest72155:OnSubFailed7215509(arg1)
    print("OnSubFailed7215509")
end

function Quest72155:OnSubStart7215510(arg1)
    print("OnSubStart7215510")
    actorMgr:CreateActorWithPos("Q7215510Trigger", "Actor/Gadget/Q7215510Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_DBT").pos, sceneData:GetDummyPoint(3, "WQ72155_DBT").rot, true, false, 3)
    self:NarratorOnlyTask(datas.Paimon01, nil, "")
end

function Quest72155:OnSubFinish7215510(arg1)
    print("OnSubFinish7215510")
    self:NarratorOnlyTask(datas.PaimonDBTYD, nil, "")
end

function Quest72155:OnSubFailed7215510(arg1)
    print("OnSubFailed7215510")
end

function Quest72155:OnSubStart7215511(arg1)
    print("OnSubStart7215511")
end

function Quest72155:OnSubFinish7215511(arg1)
    print("OnSubFinish7215511")
end

function Quest72155:OnSubFailed7215511(arg1)
    print("OnSubFailed7215511")
end

function Quest72155:OnSubStart7215512(arg1)
    print("OnSubStart7215512")
end

function Quest72155:OnSubFinish7215512(arg1)
    print("OnSubFinish7215512")
end

function Quest72155:OnSubFailed7215512(arg1)
    print("OnSubFailed7215512")
end

function Quest72155:OnSubStart7215527(arg1)
    print("OnSubStart7215527")
end

function Quest72155:OnSubFinish7215527(arg1)
    print("OnSubFinish7215527")
end

function Quest72155:OnSubFailed7215527(arg1)
    print("OnSubFailed7215527")
end

function Quest72155:OnSubStart7215528(arg1)
    print("OnSubStart7215528")
end

function Quest72155:OnSubFinish7215528(arg1)
    print("OnSubFinish7215528")
end

function Quest72155:OnSubFailed7215528(arg1)
    print("OnSubFailed7215528")
end

function Quest72155:OnSubStart7215529(arg1)
    print("OnSubStart7215529")
end

function Quest72155:OnSubFinish7215529(arg1)
    print("OnSubFinish7215529")
end

function Quest72155:OnSubFailed7215529(arg1)
    print("OnSubFailed7215529")
end

function Quest72155:OnSubStart7215530(arg1)
    print("OnSubStart7215530")
end

function Quest72155:OnSubFinish7215530(arg1)
    print("OnSubFinish7215530")
end

function Quest72155:OnSubFailed7215530(arg1)
    print("OnSubFailed7215530")
end

function Quest72155:OnSubStart7215513(arg1)
    print("OnSubStart7215513")
    self:NarratorOnlyTask(datas.PaimonDBTYD2, nil, "")
end

function Quest72155:OnSubFinish7215513(arg1)
    print("OnSubFinish7215513")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTask(datas.PaimonFinish, nil, "")
    end, nil, "QUEST_Message_Q7215501", false, true)
end

function Quest72155:OnSubFailed7215513(arg1)
    print("OnSubFailed7215513")
end

function Quest72155:OnSubStart7215514(arg1)
    print("OnSubStart7215514")
end

function Quest72155:OnSubFinish7215514(arg1)
    print("OnSubFinish7215514")
end

function Quest72155:OnSubFailed7215514(arg1)
    print("OnSubFailed7215514")
end

function Quest72155:OnSubStart7215515(arg1)
    print("OnSubStart7215515")
    actorMgr:CreateActorWithPos("Q7215515Trigger", "Actor/Gadget/Q7215515Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_PZ").pos, sceneData:GetDummyPoint(3, "WQ72155_PZ").rot, true, false, 3)
end

function Quest72155:OnSubFinish7215515(arg1)
    print("OnSubFinish7215515")
end

function Quest72155:OnSubFailed7215515(arg1)
    print("OnSubFailed7215515")
end

function Quest72155:OnSubStart7215524(arg1)
    print("OnSubStart7215524")
    self:RequestInteraction(npcs.Npc3181Data.alias)
end

function Quest72155:OnSubFinish7215524(arg1)
    print("OnSubFinish7215524")
end

function Quest72155:OnSubFailed7215524(arg1)
    print("OnSubFailed7215524")
end

function Quest72155:OnSubStart7215532(arg1)
    print("OnSubStart7215532")
end

function Quest72155:OnSubFinish7215532(arg1)
    print("OnSubFinish7215532")
end

function Quest72155:OnSubFailed7215532(arg1)
    print("OnSubFailed7215532")
end

function Quest72155:OnSubStart7215523(arg1)
    print("OnSubStart7215523")
end

function Quest72155:OnSubFinish7215523(arg1)
    print("OnSubFinish7215523")
end

function Quest72155:OnSubFailed7215523(arg1)
    print("OnSubFailed7215523")
end

function Quest72155:OnSubStart7215531(arg1)
    print("OnSubStart7215531")
    self:PlayCutsceneIndex("72155", function(arg1)
        arg1:FinishQuestID(false, 7215531)
    end, nil, nil, false)
end

function Quest72155:OnSubFinish7215531(arg1)
    print("OnSubFinish7215531")
end

function Quest72155:OnSubFailed7215531(arg1)
    print("OnSubFailed7215531")
end

function Quest72155:OnSubStart7215516(arg1)
    print("OnSubStart7215516")
    actorMgr:CreateActorWithPos("Q7215516Trigger", "Actor/Gadget/Q7215516Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQ72155_Playerdc").pos, sceneData:GetDummyPoint(3, "WQ72155_Playerdc").rot, true, false, 3)
end

function Quest72155:OnSubFinish7215516(arg1)
    print("OnSubFinish7215516")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3180Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3181Data.alias)
end

function Quest72155:OnSubFailed7215516(arg1)
    print("OnSubFailed7215516")
end

return Quest72155
