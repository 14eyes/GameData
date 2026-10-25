require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8005 = class("Quest8005", QuestActorProxy)
Quest8005.defaultAlias = "Quest8005"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest8005:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest8005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800501"] = self.OnSubStart800501,
        ["800502"] = self.OnSubStart800502,
        ["800503"] = self.OnSubStart800503,
        ["800504"] = self.OnSubStart800504,
        ["800520"] = self.OnSubStart800520,
        ["800505"] = self.OnSubStart800505,
        ["800506"] = self.OnSubStart800506,
        ["800508"] = self.OnSubStart800508,
        ["800509"] = self.OnSubStart800509,
        ["800510"] = self.OnSubStart800510,
        ["800511"] = self.OnSubStart800511,
        ["800512"] = self.OnSubStart800512,
        ["800513"] = self.OnSubStart800513,
        ["800514"] = self.OnSubStart800514,
        ["800516"] = self.OnSubStart800516,
        ["800518"] = self.OnSubStart800518,
        ["800515"] = self.OnSubStart800515,
        ["800517"] = self.OnSubStart800517,
        ["800519"] = self.OnSubStart800519
    }
end

function Quest8005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800501"] = self.OnSubFinish800501,
        ["800502"] = self.OnSubFinish800502,
        ["800503"] = self.OnSubFinish800503,
        ["800504"] = self.OnSubFinish800504,
        ["800520"] = self.OnSubFinish800520,
        ["800505"] = self.OnSubFinish800505,
        ["800506"] = self.OnSubFinish800506,
        ["800508"] = self.OnSubFinish800508,
        ["800509"] = self.OnSubFinish800509,
        ["800510"] = self.OnSubFinish800510,
        ["800511"] = self.OnSubFinish800511,
        ["800512"] = self.OnSubFinish800512,
        ["800513"] = self.OnSubFinish800513,
        ["800514"] = self.OnSubFinish800514,
        ["800516"] = self.OnSubFinish800516,
        ["800518"] = self.OnSubFinish800518,
        ["800515"] = self.OnSubFinish800515,
        ["800517"] = self.OnSubFinish800517,
        ["800519"] = self.OnSubFinish800519
    }
end

function Quest8005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["800514"] = self.OnSubFailed800514, ["800516"] = self.OnSubFailed800516}
end

function Quest8005:Start()
    print("Start")
end

function Quest8005:OnDestroy()
    print("OnDestroy")
end

function Quest8005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8005:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12424Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12454Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12455Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12456Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12457Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12458Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12429Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12452Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12453Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12514Data.alias, 6)
    actorMgr:DestroyEntityActor("Q800501_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800505_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800508_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800511_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800512_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800513_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800515_TriggerIn", 6, false)
    actorMgr:DestroyEntityActor("Q800516_TriggerIn", 6, false)
end

function Quest8005:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 800517 then
        actorMgr:GetActor("8005"):FinishQuestID(false, 800517)
    elseif arg1 == 800519 then
        actorMgr:GetActor("8005"):FinishQuestID(false, 800519)
    elseif arg1 == 800520 then
        actorMgr:GetActor("8005"):FinishQuestID(false, 800520)
    end
end

function Quest8005:OnSubStart800501(arg1)
    print("OnSubStart800501")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800501_TriggerIn", "Actor/Gadget/Q800501_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800501_guide").pos, sceneData:GetDummyPoint(6, "Q800501_guide").rot, true, false, 6)
end

function Quest8005:OnSubFinish800501(arg1)
    print("OnSubFinish800501")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12429Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12452Data.alias, 6)
end

function Quest8005:OnSubStart800502(arg1)
    print("OnSubStart800502")
end

function Quest8005:OnSubFinish800502(arg1)
    print("OnSubFinish800502")
end

function Quest8005:OnSubStart800503(arg1)
    print("OnSubStart800503")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
    end)
end

function Quest8005:OnSubFinish800503(arg1)
    print("OnSubFinish800503")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

function Quest8005:OnSubStart800504(arg1)
    print("OnSubStart800504")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
end

function Quest8005:OnSubFinish800504(arg1)
    print("OnSubFinish800504")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
end

function Quest8005:OnSubStart800520(arg1)
    print("OnSubStart800520")
end

function Quest8005:OnSubFinish800520(arg1)
    print("OnSubFinish800520")
end

function Quest8005:OnSubStart800505(arg1)
    print("OnSubStart800505")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12429Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12453Data.id, 4)
    actorMgr:CreateActorWithPos("Q800505_TriggerIn", "Actor/Gadget/Q800505_TriggerIn", 70900002, 0, {x = 457.16, y = 466.56, z = 463.58}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800505(arg1)
    print("OnSubFinish800505")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12429Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12453Data.alias, 6)
end

function Quest8005:OnSubStart800506(arg1)
    print("OnSubStart800506")
end

function Quest8005:OnSubFinish800506(arg1)
    print("OnSubFinish800506")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_800504)
end

function Quest8005:OnSubStart800508(arg1)
    print("OnSubStart800508")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
    actorMgr:CreateActorWithPos("Q800508_TriggerIn", "Actor/Gadget/Q800508_TriggerIn", 70900002, 0, {x = 456.1448, y = 480.3326, z = 461.4648}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800508(arg1)
    print("OnSubFinish800508")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12429Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12452Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12453Data.alias, 6)
end

function Quest8005:OnSubStart800509(arg1)
    print("OnSubStart800509")
end

function Quest8005:OnSubFinish800509(arg1)
    print("OnSubFinish800509")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_800501)
end

function Quest8005:OnSubStart800510(arg1)
    print("OnSubStart800510")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
end

function Quest8005:OnSubFinish800510(arg1)
    print("OnSubFinish800510")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12429Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12452Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12453Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12514Data.alias, 6)
end

function Quest8005:OnSubStart800511(arg1)
    print("OnSubStart800511")
    self:CreateQuestNpc(arg1, npcs.Npc12454Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12455Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12456Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12457Data.id, 5)
    actorMgr:CreateActorWithPos("Q800511_TriggerIn", "Actor/Gadget/Q800511_TriggerIn", 70900002, 0, sceneData:GetDummyPoint(6, "Q800511_guide").pos, sceneData:GetDummyPoint(6, "Q800511_guide").rot, true, false, 6)
end

function Quest8005:OnSubFinish800511(arg1)
    print("OnSubFinish800511")
    actorMgr:DestroyEntityActor(datas.Q800511_TriggerIn.alias, 6, false)
end

function Quest8005:OnSubStart800512(arg1)
    print("OnSubStart800512")
    self:CreateQuestNpc(arg1, npcs.Npc12454Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12455Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12456Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12457Data.id, 5)
    actorMgr:CreateActorWithPos("Q800512_TriggerIn", "Actor/Gadget/Q800512_TriggerIn", 70900002, 0, {x = 457.3664, y = 473.9988, z = 523.5536}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800512(arg1)
    print("OnSubFinish800512")
    actorMgr:DestroyEntityActor(datas.Q800512_TriggerIn.alias, 6, false)
end

function Quest8005:OnSubStart800513(arg1)
    print("OnSubStart800513")
    actorMgr:CreateActorWithPos("Q800513_TriggerIn", "Actor/Gadget/Q800513_TriggerIn", 70900002, 0, {x = 464.5487, y = 479.755, z = 576.2811}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800513(arg1)
    print("OnSubFinish800513")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 6)
    actorMgr:DestroyEntityActor(datas.Q800513_TriggerIn.alias, 6, false)
end

function Quest8005:OnSubStart800514(arg1)
    print("OnSubStart800514")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 2)
end

function Quest8005:OnSubFinish800514(arg1)
    print("OnSubFinish800514")
end

function Quest8005:OnSubFailed800514(arg1)
    print("OnSubFailed800514")
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
end

function Quest8005:OnSubStart800516(arg1)
    print("OnSubStart800516")
    self:CreateQuestNpc(arg1, npcs.Npc12458Data.id, 3)
    actorMgr:CreateActorWithPos("Q800516_TriggerIn", "Actor/Gadget/Q800516_TriggerIn", 70900002, 0, {x = 457.4525, y = 495.7704, z = 523.1968}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800516(arg1)
    print("OnSubFinish800516")
    self:SafeDestroyQuestNpc(npcs.Npc12424Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12458Data.alias, 6)
    actorMgr:DestroyEntityActor(datas.Q800511_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800512_TriggerIn.alias, 6, false)
    actorMgr:DestroyEntityActor(datas.Q800513_TriggerIn.alias, 6, false)
end

function Quest8005:OnSubFailed800516(arg1)
    print("OnSubFailed800516")
    actorMgr:DestroyEntityActor(datas.Q800516_TriggerIn.alias, 6, false)
end

function Quest8005:OnSubStart800518(arg1)
    print("OnSubStart800518")
    actorUtils.FinishQuestID(false, 800518)
end

function Quest8005:OnSubFinish800518(arg1)
    print("OnSubFinish800518")
    self:SafeDestroyQuestNpc(npcs.Npc12424Data.alias, 6)
end

function Quest8005:OnSubStart800515(arg1)
    print("OnSubStart800515")
    self:CreateQuestNpc(arg1, npcs.Npc12427Data.id, 3)
    actorMgr:CreateActorWithPos("Q800515_TriggerIn", "Actor/Gadget/Q800515_TriggerIn", 70900002, 0, {x = 457.4525, y = 495.7704, z = 523.1968}, {x = 0, y = 0, z = 0}, true, false, 6)
end

function Quest8005:OnSubFinish800515(arg1)
    print("OnSubFinish800515")
    self:SafeDestroyQuestNpc(npcs.Npc12424Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12427Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12454Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12455Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12456Data.alias, 6)
    self:SafeDestroyQuestNpc(npcs.Npc12457Data.alias, 6)
end

function Quest8005:OnSubStart800517(arg1)
    print("OnSubStart800517")
end

function Quest8005:OnSubFinish800517(arg1)
    print("OnSubFinish800517")
end

function Quest8005:OnSubStart800519(arg1)
    print("OnSubStart800519")
end

function Quest8005:OnSubFinish800519(arg1)
    print("OnSubFinish800519")
end

return Quest8005
