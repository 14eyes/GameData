require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8003 = class("Quest8003", QuestActorProxy)
Quest8003.defaultAlias = "Quest8003"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest8003:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest8003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800301"] = self.OnSubStart800301,
        ["800306"] = self.OnSubStart800306,
        ["800307"] = self.OnSubStart800307,
        ["800302"] = self.OnSubStart800302,
        ["800308"] = self.OnSubStart800308,
        ["800309"] = self.OnSubStart800309,
        ["800303"] = self.OnSubStart800303,
        ["800310"] = self.OnSubStart800310,
        ["800304"] = self.OnSubStart800304,
        ["800305"] = self.OnSubStart800305,
        ["800311"] = self.OnSubStart800311
    }
end

function Quest8003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800301"] = self.OnSubFinish800301,
        ["800306"] = self.OnSubFinish800306,
        ["800307"] = self.OnSubFinish800307,
        ["800302"] = self.OnSubFinish800302,
        ["800308"] = self.OnSubFinish800308,
        ["800309"] = self.OnSubFinish800309,
        ["800303"] = self.OnSubFinish800303,
        ["800310"] = self.OnSubFinish800310,
        ["800304"] = self.OnSubFinish800304,
        ["800305"] = self.OnSubFinish800305,
        ["800311"] = self.OnSubFinish800311
    }
end

function Quest8003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["800301"] = self.OnSubFailed800301,
        ["800306"] = self.OnSubFailed800306,
        ["800307"] = self.OnSubFailed800307,
        ["800302"] = self.OnSubFailed800302,
        ["800308"] = self.OnSubFailed800308,
        ["800309"] = self.OnSubFailed800309,
        ["800303"] = self.OnSubFailed800303,
        ["800310"] = self.OnSubFailed800310,
        ["800304"] = self.OnSubFailed800304,
        ["800305"] = self.OnSubFailed800305,
        ["800311"] = self.OnSubFailed800311
    }
end

function Quest8003:Start()
    print("Start")
end

function Quest8003:OnDestroy()
    print("OnDestroy")
end

function Quest8003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:UnSpawn(gadgets.Gadget71700200Data.alias)
        self:SpawnGadgetById(800307, gadgets.Gadget71700200Data.id, 1)
    elseif arg1 == 2 then
        self:UnSpawn(gadgets.Gadget71700200Data.alias)
    elseif arg1 == 3 then
        self:EnableElementView(true)
    elseif arg1 == 4 then
        self:EnableElementView(false)
    end
end

function Quest8003:OnSubStart800301(arg1)
    print("OnSubStart800301")
    self:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
end

function Quest8003:OnSubFinish800301(arg1)
    print("OnSubFinish800301")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8003:OnSubFailed800301(arg1)
    print("OnSubFailed800301")
end

function Quest8003:OnSubStart800302(arg1)
    print("OnSubStart800302")
    actorMgr:CreateActorWithPos("Q8003DungeonTrigger", "Actor/Gadget/Q8003DungeonTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8000DungeonEntry").pos, sceneData:GetDummyPoint(3, "Q8000DungeonEntry").rot, true, false, 3)
end

function Quest8003:OnSubFinish800302(arg1)
    print("OnSubFinish800302")
end

function Quest8003:OnSubFailed800302(arg1)
    print("OnSubFailed800302")
end

function Quest8003:OnSubStart800303(arg1)
    print("OnSubStart800303")
end

function Quest8003:OnSubFinish800303(arg1)
    print("OnSubFinish800303")
end

function Quest8003:OnSubFailed800303(arg1)
    print("OnSubFailed800303")
end

function Quest8003:OnSubStart800304(arg1)
    print("OnSubStart800304")
end

function Quest8003:OnSubFinish800304(arg1)
    print("OnSubFinish800304")
end

function Quest8003:OnSubFailed800304(arg1)
    print("OnSubFailed800304")
end

function Quest8003:OnSubStart800305(arg1)
    print("OnSubStart800305")
    if sceneData.currSceneID == 20105 then
        self:PlayCutsceneIndex("80030501", function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        end, nil, nil, false)
    end
end

function Quest8003:OnSubFinish800305(arg1)
    print("OnSubFinish800305")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 20105)
    self:SafeDestroyQuestNpc_MaleCond("Npc1026", "Npc1025", 20105)
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20105)
end

function Quest8003:OnSubFailed800305(arg1)
    print("OnSubFailed800305")
end

function Quest8003:OnSubStart800306(arg1)
    print("OnSubStart800306")
    actorMgr:CreateActorWithPos("Q8003GuardianTrigger", "Actor/Gadget/Q8003GuardianTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8003Guardian").pos, sceneData:GetDummyPoint(3, "Q8003Guardian").rot, true, false, 3)
end

function Quest8003:OnSubFinish800306(arg1)
    print("OnSubFinish800306")
end

function Quest8003:OnSubFailed800306(arg1)
    print("OnSubFailed800306")
end

function Quest8003:OnSubStart800307(arg1)
    print("OnSubStart800307")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        arg1_2:FinishQuestID(false, 4141501)
    end, nil, nil, "")
end

function Quest8003:OnSubFinish800307(arg1)
    print("OnSubFinish800307")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8003:OnSubFailed800307(arg1)
    print("OnSubFailed800307")
end

function Quest8003:OnSubStart800308(arg1)
    print("OnSubStart800308")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.PaimonData.alias})
    self:ShowBlackScreen(0.5, 1.0, 0, function(arg1)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local n = 1.5
        print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
        avatarPos.x = avatarPos.x + avatarForward.x * n
        avatarPos.z = avatarPos.z + avatarForward.z * n
        local v = avatarForward
        v.x = v.x * -1
        v.z = v.z * -1
        arg1:CreateQuestNpcByIdWithPos(800308, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
        arg1:RequestInteraction(npcs.PaimonData.alias)
    end, nil, questNpcCreateTask)
end

function Quest8003:OnSubFinish800308(arg1)
    print("OnSubFinish800308")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest8003:OnSubFailed800308(arg1)
    print("OnSubFailed800308")
end

function Quest8003:OnSubStart800309(arg1)
    print("OnSubStart800309")
end

function Quest8003:OnSubFinish800309(arg1)
    print("OnSubFinish800309")
end

function Quest8003:OnSubFailed800309(arg1)
    print("OnSubFailed800309")
end

function Quest8003:OnSubStart800310(arg1)
    print("OnSubStart800310")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
    end, nil, nil, "")
end

function Quest8003:OnSubFinish800310(arg1)
    print("OnSubFinish800310")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 20105)
    self:SafeDestroyQuestNpc(npcs.Npc10916Data.alias, 20105)
end

function Quest8003:OnSubFailed800310(arg1)
    print("OnSubFailed800310")
end

function Quest8003:OnSubStart800311(arg1)
    print("OnSubStart800311")
    if sceneData.currSceneID == 20105 then
        self:PlayCutsceneIndex("80030502", function(arg1)
            local avatarPos = actorUtils.GetAvatarPos()
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 1.5
            print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
            avatarPos.x = avatarPos.x + avatarForward.x * n
            avatarPos.z = avatarPos.z + avatarForward.z * n
            local v = avatarForward
            v.x = v.x * -1
            v.z = v.z * -1
            arg1:CreateQuestNpcByIdWithPos(800311, npcs.PaimonData.id, 1, avatarPos, M.Dir2Euler(v))
            arg1:RequestInteraction(npcs.PaimonData.alias)
        end, nil, nil, false)
    end
end

function Quest8003:OnSubFinish800311(arg1)
    print("OnSubFinish800311")
end

function Quest8003:OnSubFailed800311(arg1)
    print("OnSubFailed800311")
end

return Quest8003
