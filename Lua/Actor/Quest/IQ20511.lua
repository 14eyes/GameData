require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20511 = class("Quest20511", QuestActorProxy)
Quest20511.defaultAlias = "Quest20511"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest20511:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest20511:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051101"] = self.OnSubStart2051101,
        ["2051102"] = self.OnSubStart2051102,
        ["2051103"] = self.OnSubStart2051103,
        ["2051104"] = self.OnSubStart2051104
    }
end

function Quest20511:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051101"] = self.OnSubFinish2051101,
        ["2051102"] = self.OnSubFinish2051102,
        ["2051103"] = self.OnSubFinish2051103,
        ["2051104"] = self.OnSubFinish2051104
    }
end

function Quest20511:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051101"] = self.OnSubFailed2051101,
        ["2051102"] = self.OnSubFailed2051102,
        ["2051103"] = self.OnSubFailed2051103,
        ["2051104"] = self.OnSubFailed2051104
    }
end

function Quest20511:Start()
    print("Start")
end

function Quest20511:OnDestroy()
    print("OnDestroy")
end

function Quest20511:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20511:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0.5, self.ClearData)
end

function Quest20511:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20511:OpenCompass()
    Quest20511:CallOnElemViewOpen(function()
        local actor = actorMgr:GetActor(actorAlias)
        if actor:GetSubQuestState(2051103) ~= QuestState.QUEST_STATE_FINISHED then
            local targetPos = datas.TargetPos
            if targetPos ~= nil then
                local avatarPos = actorUtils.GetAvatarPos()
                local tbl = {x = targetPos.x - avatarPos.x, y = 0, z = targetPos.z - avatarPos.z}
                local avatarForward = actorUtils.GetAvatarForward()
                local n = 3
                local v = actorUtils.GetAvatarPos()
                v.x = v.x + avatarForward.x * n
                v.y = v.y + 0.8
                v.z = v.z + avatarForward.z * n
                actor:SpawnGadgetByIdWithPos(2051103, 70710090, 1, v, M.Dir2Euler(tbl))
                Quest20511:CloseCompass()
            end
        end
    end)
end

function Quest20511:CloseCompass()
    print("CloseCompass")
    Quest20511:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q20511Compass")
        Quest20511:OpenCompass()
    end)
end

function Quest20511:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20511:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1408Data.alias, 3)
end

function Quest20511:OnSubStart2051101(arg1)
    print("OnSubStart2051101")
    self:CreateQuestNpc(arg1, npcs.Npc1408Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc1408Data.alias):DoFreeStyle(1190)
end

function Quest20511:OnSubFinish2051101(arg1)
    print("OnSubFinish2051101")
end

function Quest20511:OnSubFailed2051101(arg1)
    print("OnSubFailed2051101")
end

function Quest20511:OnSubStart2051102(arg1)
    print("OnSubStart2051102")
end

function Quest20511:OnSubFinish2051102(arg1)
    print("OnSubFinish2051102")
end

function Quest20511:OnSubFailed2051102(arg1)
    print("OnSubFailed2051102")
end

function Quest20511:OnSubStart2051103(arg1)
    self:OpenCompass()
end

function Quest20511:OnSubFinish2051103(arg1)
    print("OnSubFinish2051103")
end

function Quest20511:OnSubFailed2051103(arg1)
    print("OnSubFailed2051103")
end

function Quest20511:OnSubStart2051104(arg1)
    print("OnSubStart2051104")
end

function Quest20511:OnSubFinish2051104(arg1)
    print("OnSubFinish2051104")
end

function Quest20511:OnSubFailed2051104(arg1)
    print("OnSubFailed2051104")
end

return Quest20511
