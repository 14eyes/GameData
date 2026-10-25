require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14005 = class("Quest14005", QuestActorProxy)
Quest14005.defaultAlias = "Quest14005"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest14005:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest14005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400501"] = self.OnSubStart1400501,
        ["1400502"] = self.OnSubStart1400502,
        ["1400503"] = self.OnSubStart1400503,
        ["1400504"] = self.OnSubStart1400504,
        ["1400505"] = self.OnSubStart1400505,
        ["1400506"] = self.OnSubStart1400506,
        ["1400507"] = self.OnSubStart1400507,
        ["1400514"] = self.OnSubStart1400514,
        ["1400515"] = self.OnSubStart1400515,
        ["1400516"] = self.OnSubStart1400516,
        ["1400517"] = self.OnSubStart1400517,
        ["1400518"] = self.OnSubStart1400518,
        ["1400519"] = self.OnSubStart1400519,
        ["1400520"] = self.OnSubStart1400520,
        ["1400521"] = self.OnSubStart1400521,
        ["1400513"] = self.OnSubStart1400513,
        ["1400508"] = self.OnSubStart1400508,
        ["1400509"] = self.OnSubStart1400509,
        ["1400510"] = self.OnSubStart1400510,
        ["1400512"] = self.OnSubStart1400512
    }
end

function Quest14005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400501"] = self.OnSubFinish1400501,
        ["1400502"] = self.OnSubFinish1400502,
        ["1400503"] = self.OnSubFinish1400503,
        ["1400504"] = self.OnSubFinish1400504,
        ["1400505"] = self.OnSubFinish1400505,
        ["1400506"] = self.OnSubFinish1400506,
        ["1400507"] = self.OnSubFinish1400507,
        ["1400514"] = self.OnSubFinish1400514,
        ["1400515"] = self.OnSubFinish1400515,
        ["1400516"] = self.OnSubFinish1400516,
        ["1400517"] = self.OnSubFinish1400517,
        ["1400518"] = self.OnSubFinish1400518,
        ["1400519"] = self.OnSubFinish1400519,
        ["1400520"] = self.OnSubFinish1400520,
        ["1400521"] = self.OnSubFinish1400521,
        ["1400513"] = self.OnSubFinish1400513,
        ["1400508"] = self.OnSubFinish1400508,
        ["1400509"] = self.OnSubFinish1400509,
        ["1400510"] = self.OnSubFinish1400510,
        ["1400512"] = self.OnSubFinish1400512
    }
end

function Quest14005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14005:Start()
    print("Start")
end

function Quest14005:OnDestroy()
    print("OnDestroy")
end

function Quest14005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14005:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13479Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1078Data.alias):LookAt({x = 4502.587, y = 122.678, z = 4633.649})
        this:GetQuestNpcActor(npcs.Npc13479Data.alias):LookAt({x = 4502.083, y = 122.716, z = 4634.699})
    end
end

function Quest14005:OnSubStart1400501(arg1)
    print("OnSubStart1400501")
    this:NpcCreateWithNpcTrigger(npcs.Npc13479Data.id, 1400501, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc13480Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13481Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13482Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5206Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):SitOnChair(0, false)
    this:CreateLocalGadget(707111123, "1", {x = 4492.114, y = 122.66, z = 4599.668}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false)
    this:CreateLocalGadget(707111134, "1", {x = 4492.326, y = 122.66, z = 4599.923}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, false)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1320, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5206Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest14005:OnSubFinish1400501(arg1)
    print("OnSubFinish1400501")
    this:RemoveLocalGadget(707111123, "1")
    this:RemoveLocalGadget(707111134, "1")
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):StandFromChairEx(0)
    this:GetQuestNpcActor(npcs.Npc5206Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc5206Data.alias, 3)
end

function Quest14005:OnSubStart1400502(arg1)
    print("OnSubStart1400502")
end

function Quest14005:OnSubFinish1400502(arg1)
    print("OnSubFinish1400502")
end

function Quest14005:OnSubStart1400503(arg1)
    print("OnSubStart1400503")
end

function Quest14005:OnSubFinish1400503(arg1)
    print("OnSubFinish1400503")
end

function Quest14005:OnSubStart1400504(arg1)
    print("OnSubStart1400504")
end

function Quest14005:OnSubFinish1400504(arg1)
    print("OnSubFinish1400504")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1078Data.alias)
    questNpcActor:SitOnChair(0, false)
    questNpcActor:LookAt({x = 4502.587, y = 122.678, z = 4633.649})
end

function Quest14005:OnSubStart1400505(arg1)
    print("OnSubStart1400505")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13479Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13480Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13481Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13482Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13589Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):LookAt({x = 4502.587, y = 122.678, z = 4633.649})
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):LookAt({x = 4502.083, y = 122.716, z = 4634.699})
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest14005:OnSubFinish1400505(arg1)
    print("OnSubFinish1400505")
end

function Quest14005:OnSubStart1400506(arg1)
    print("OnSubStart1400506")
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1190, true, nil, true, true, true, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13478Data.id, 1400506, 0, 30, 1)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):LookAt({x = 4502.587, y = 122.678, z = 4633.649})
    this:GetQuestNpcActor(npcs.Npc13479Data.alias):LookAt({x = 4502.083, y = 122.716, z = 4634.699})
end

function Quest14005:OnSubFinish1400506(arg1)
    print("OnSubFinish1400506")
    this:SafeDestroyQuestNpc(npcs.Npc13479Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13478Data.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DisableInteeHeadCtrl(false)
end

function Quest14005:OnSubStart1400507(arg1)
    print("OnSubStart1400507")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc13480Data.id, 1400507, 0, 25)
    this:CreateQuestNpc(arg1, npcs.Npc13481Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13482Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest14005:OnSubFinish1400507(arg1)
    print("OnSubFinish1400507")
end

function Quest14005:OnSubStart1400514(arg1)
    print("OnSubStart1400514")
end

function Quest14005:OnSubFinish1400514(arg1)
    print("OnSubFinish1400514")
end

function Quest14005:OnSubStart1400515(arg1)
    print("OnSubStart1400515")
end

function Quest14005:OnSubFinish1400515(arg1)
    print("OnSubFinish1400515")
end

function Quest14005:OnSubStart1400516(arg1)
    print("OnSubStart1400516")
end

function Quest14005:OnSubFinish1400516(arg1)
    print("OnSubFinish1400516")
end

function Quest14005:OnSubStart1400517(arg1)
    print("OnSubStart1400517")
end

function Quest14005:OnSubFinish1400517(arg1)
    print("OnSubFinish1400517")
end

function Quest14005:OnSubStart1400518(arg1)
    print("OnSubStart1400518")
end

function Quest14005:OnSubFinish1400518(arg1)
    print("OnSubFinish1400518")
end

function Quest14005:OnSubStart1400519(arg1)
    print("OnSubStart1400519")
end

function Quest14005:OnSubFinish1400519(arg1)
    print("OnSubFinish1400519")
end

function Quest14005:OnSubStart1400520(arg1)
    print("OnSubStart1400520")
end

function Quest14005:OnSubFinish1400520(arg1)
    print("OnSubFinish1400520")
end

function Quest14005:OnSubStart1400521(arg1)
    print("OnSubStart1400521")
end

function Quest14005:OnSubFinish1400521(arg1)
    print("OnSubFinish1400521")
end

function Quest14005:OnSubStart1400513(arg1)
    print("OnSubStart1400513")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13480Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13481Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13482Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):DoFreeStyle(1220, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
end

function Quest14005:OnSubFinish1400513(arg1)
    print("OnSubFinish1400513")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1400501)
    end)
end

function Quest14005:OnSubStart1400508(arg1)
    print("OnSubStart1400508")
    this:NpcCreateWithNpcTrigger(npcs.Npc1078Data.id, 1400508, 0, 8)
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
end

function Quest14005:OnSubFinish1400508(arg1)
    print("OnSubFinish1400508")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
end

function Quest14005:OnSubStart1400509(arg1)
    print("OnSubStart1400509")
    this:GetQuestNpcActor(npcs.Npc13481Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc13482Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc13480Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
end

function Quest14005:OnSubFinish1400509(arg1)
    print("OnSubFinish1400509")
    this:NarratorOnlyTaskByData(datas.Narrator_1400502)
    this:SafeDestroyQuestNpc(npcs.Npc13480Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13481Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13482Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13589Data.alias, 3)
end

function Quest14005:OnSubStart1400510(arg1)
    print("OnSubStart1400510")
    this:NpcCreateWithNpcTrigger(npcs.Npc1078Data.id, 1400510, 0, 5)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, true)
end

function Quest14005:OnSubFinish1400510(arg1)
    print("OnSubFinish1400510")
    this:StopNarrator()
    this:ClearNarratorTask()
end

function Quest14005:OnSubStart1400512(arg1)
    print("OnSubStart1400512")
    this:CreateLocalGadget(70711233, "1400511", {x = 0.806, y = 17.876, z = 0.581}, {x = 86.378, y = -2.703, z = 134.097}, 1086, nil, nil, true)
end

function Quest14005:OnSubFinish1400512(arg1)
    print("OnSubFinish1400512")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 1086)
    this:RemoveLocalGadget(70711233, "1400511")
end

return Quest14005
