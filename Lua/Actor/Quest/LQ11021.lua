require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11021 = class("Quest11021", QuestActorProxy)
Quest11021.defaultAlias = "Quest11021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local pos

function Quest11021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1102101"] = self.OnSubStart1102101,
        ["1102102"] = self.OnSubStart1102102,
        ["1102107"] = self.OnSubStart1102107,
        ["1102108"] = self.OnSubStart1102108,
        ["1102103"] = self.OnSubStart1102103,
        ["1102104"] = self.OnSubStart1102104,
        ["1102109"] = self.OnSubStart1102109,
        ["1102105"] = self.OnSubStart1102105,
        ["1102106"] = self.OnSubStart1102106
    }
end

function Quest11021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1102101"] = self.OnSubFinish1102101,
        ["1102102"] = self.OnSubFinish1102102,
        ["1102107"] = self.OnSubFinish1102107,
        ["1102108"] = self.OnSubFinish1102108,
        ["1102103"] = self.OnSubFinish1102103,
        ["1102104"] = self.OnSubFinish1102104,
        ["1102105"] = self.OnSubFinish1102105,
        ["1102106"] = self.OnSubFinish1102106
    }
end

function Quest11021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1102101"] = self.OnSubFailed1102101,
        ["1102102"] = self.OnSubFailed1102102,
        ["1102107"] = self.OnSubFailed1102107,
        ["1102108"] = self.OnSubFailed1102108,
        ["1102103"] = self.OnSubFailed1102103,
        ["1102104"] = self.OnSubFailed1102104,
        ["1102105"] = self.OnSubFailed1102105,
        ["1102106"] = self.OnSubFailed1102106
    }
end

function Quest11021:Start()
    print("Start")
end

function Quest11021:OnDestroy()
    print("OnDestroy")
end

function Quest11021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11021:OpenCompass()
    Quest11021:CallOnElemViewOpen(function()
        if pos ~= nil then
            local avatarPos = actorUtils.GetAvatarPos()
            local tbl = {x = pos.x - avatarPos.x, y = 0, z = pos.z - avatarPos.z}
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 2
            local v = actorUtils.GetAvatarPos()
            v.x = v.x + avatarForward.x * n
            v.y = v.y + 0.4
            v.z = v.z + avatarForward.z * n
            local dist = M.Dist(pos, avatarPos)
            print("NOW Distance is", currLen)
            if dist < 200 then
                actorMgr:GetActor(clientData.ActorAlias):SpawnGadgetByIdWithPos(1102107, 70300070, 1, v, M.Dir2Euler(tbl))
            end

            Quest11021:CloseCompass()
        end
    end)
end

function Quest11021:CloseCompass()
    Quest11021:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q11021Compass")
        Quest11021:OpenCompass()
    end)
end

function Quest11021:OnSubStart1102101(arg1)
    print("OnSubStart1102101")
    actorMgr:CreateActorWithPos("Q1102101Trigger", "Actor/Gadget/Q1102101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11021ZL1").pos, sceneData:GetDummyPoint(3, "Q11021ZL1").rot, true, false, 3)
end

function Quest11021:OnSubFinish1102101(arg1)
    print("OnSubFinish1102101")
end

function Quest11021:OnSubFailed1102101(arg1)
    print("OnSubFailed1102101")
end

function Quest11021:OnSubStart1102102(arg1)
    print("OnSubStart1102102")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc10232Data.alias)
    end)
end

function Quest11021:OnSubFinish1102102(arg1)
    print("OnSubFinish1102102")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10303Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10302Data.alias, 3)
        arg1:DestroyQuestNpcActor("Paimon", 3)
    end)

    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 11021)
        end)
    end)
end

function Quest11021:OnSubFailed1102102(arg1)
    print("OnSubFailed1102102")
end

function Quest11021:OnSubStart1102107(arg1)
    print("OnSubStart1102107")
    pos = sceneData:GetDummyPoint(3, "Q11021Battle1").pos
    self:OpenCompass()
    actorMgr:CreateActorWithPos(datas.Q1102107Trigger_.alias, datas.Q1102107Trigger_.script, datas.Q1102107Trigger_.id, 0, datas.Q1102107Trigger_.point.pos, datas.Q1102107Trigger_.point.rot, true, false, 3)
end

function Quest11021:OnSubFinish1102107(arg1)
    print("OnSubFinish1102107")
    self:UnCallFunc(self.OpenCompass)
end

function Quest11021:OnSubFailed1102107(arg1)
    print("OnSubFailed1102107")
end

function Quest11021:OnSubStart1102108(arg1)
    print("OnSubStart1102108")
end

function Quest11021:OnSubFinish1102108(arg1)
    print("OnSubFinish1102108")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 11021)
end

function Quest11021:OnSubFailed1102108(arg1)
    print("OnSubFailed1102108")
end

function Quest11021:OnSubStart1102103(arg1)
    print("OnSubStart1102103")
    pos = sceneData:GetDummyPoint(3, "Q11021Gadget1").pos
    self:OpenCompass()
end

function Quest11021:OnSubFinish1102103(arg1)
    print("OnSubFinish1102103")
end

function Quest11021:OnSubFailed1102103(arg1)
    print("OnSubFailed1102103")
end

function Quest11021:OnSubStart1102104(arg1)
    print("OnSubStart1102104")
    pos = sceneData:GetDummyPoint(3, "Q11021Gadget2").pos
    self:OpenCompass()
    self:UnSpawn("Q11021Gad2")
    self:CallDelay(0.2, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70300118, 1)
    end)
end

function Quest11021:OnSubFinish1102104(arg1)
    print("OnSubFinish1102104")
    self:UnSpawn("Q11021Gad2")
end

function Quest11021:OnSubFailed1102104(arg1)
    print("OnSubFailed1102104")
end

function Quest11021:OnSubStart1102109(arg1)
    print("OnSubStart1102109")
    pos = sceneData:GetDummyPoint(3, "Q11021Gadget3").pos
    self:OpenCompass()
    actorMgr:CreateActorWithPos("Q1102109Trigger", "Actor/Gadget/Q1102109Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q11021Gadget3").pos, sceneData:GetDummyPoint(3, "Q11021Gadget3").rot, true, false, 3)
    actorMgr:CreateActorWithPos(datas.Q1102105Trigger_.alias, datas.Q1102105Trigger_.script, datas.Q1102105Trigger_.id, 0, datas.Q1102105Trigger_.point.pos, datas.Q1102105Trigger_.point.rot, true, false, 3)
end

function Quest11021:OnSubStart1102105(arg1)
    print("OnSubStart1102105")
end

function Quest11021:OnSubFinish1102105(arg1)
    print("OnSubFinish1102105")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03, nil, 11021)
end

function Quest11021:OnSubFailed1102105(arg1)
    print("OnSubFailed1102105")
end

function Quest11021:OnSubStart1102106(arg1)
    print("OnSubStart1102106")
    self:CreateQuestNpc(arg1, npcs.Npc10303Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc10302Data.id, 0)
end

function Quest11021:OnSubFinish1102106(arg1)
    print("OnSubFinish1102106")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
        arg1:DestroyQuestNpcActor("Paimon", 3)
    end)
end

function Quest11021:OnSubFailed1102106(arg1)
    print("OnSubFailed1102106")
end

return Quest11021
