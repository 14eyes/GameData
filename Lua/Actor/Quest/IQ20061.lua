require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20061 = class("Quest20061", QuestActorProxy)
Quest20061.defaultAlias = "Quest20061"
local clientData
local subIDs
local actors
local paimonData
local datas
local narratorData1
local narratorData2
local narratorData3
local narratorData4
local narratorData5

function Quest20061:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    paimonData = actors.PaimonData
    datas = clientData.Datas
    narratorData1 = datas.NarratorData1
    narratorData2 = datas.NarratorData2
    narratorData3 = datas.NarratorData3
    narratorData4 = datas.NarratorData4
    narratorData5 = datas.NarratorData5
end

function Quest20061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006101"] = self.OnSubStart2006101,
        ["2006102"] = self.OnSubStart2006102,
        ["2006103"] = self.OnSubStart2006103,
        ["2006104"] = self.OnSubStart2006104,
        ["2006105"] = self.OnSubStart2006105,
        ["2006106"] = self.OnSubStart2006106,
        ["2006107"] = self.OnSubStart2006107,
        ["2006108"] = self.OnSubStart2006108,
        ["2006109"] = self.OnSubStart2006109,
        ["2006110"] = self.OnSubStart2006110,
        ["2006111"] = self.OnSubStart2006111,
        ["2006112"] = self.OnSubStart2006112,
        ["2006113"] = self.OnSubStart2006113,
        ["2006114"] = self.OnSubStart2006114,
        ["2006115"] = self.OnSubStart2006115,
        ["2006116"] = self.OnSubStart2006116,
        ["2006117"] = self.OnSubStart2006117,
        ["2006118"] = self.OnSubStart2006118,
        ["2006119"] = self.OnSubStart2006119,
        ["2006120"] = self.OnSubStart2006120
    }
end

function Quest20061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006101"] = self.OnSubFinish2006101,
        ["2006102"] = self.OnSubFinish2006102,
        ["2006103"] = self.OnSubFinish2006103,
        ["2006104"] = self.OnSubFinish2006104,
        ["2006105"] = self.OnSubFinish2006105,
        ["2006106"] = self.OnSubFinish2006106,
        ["2006107"] = self.OnSubFinish2006107,
        ["2006108"] = self.OnSubFinish2006108,
        ["2006109"] = self.OnSubFinish2006109,
        ["2006110"] = self.OnSubFinish2006110,
        ["2006111"] = self.OnSubFinish2006111,
        ["2006112"] = self.OnSubFinish2006112,
        ["2006113"] = self.OnSubFinish2006113,
        ["2006114"] = self.OnSubFinish2006114,
        ["2006115"] = self.OnSubFinish2006115,
        ["2006116"] = self.OnSubFinish2006116,
        ["2006117"] = self.OnSubFinish2006117,
        ["2006118"] = self.OnSubFinish2006118,
        ["2006119"] = self.OnSubFinish2006119,
        ["2006120"] = self.OnSubFinish2006120
    }
end

function Quest20061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006101"] = self.OnSubFailed2006101,
        ["2006102"] = self.OnSubFailed2006102,
        ["2006103"] = self.OnSubFailed2006103,
        ["2006104"] = self.OnSubFailed2006104,
        ["2006105"] = self.OnSubFailed2006105,
        ["2006106"] = self.OnSubFailed2006106,
        ["2006107"] = self.OnSubFailed2006107,
        ["2006108"] = self.OnSubFailed2006108,
        ["2006109"] = self.OnSubFailed2006109,
        ["2006110"] = self.OnSubFailed2006110,
        ["2006111"] = self.OnSubFailed2006111,
        ["2006112"] = self.OnSubFailed2006112,
        ["2006113"] = self.OnSubFailed2006113,
        ["2006114"] = self.OnSubFailed2006114,
        ["2006115"] = self.OnSubFailed2006115,
        ["2006116"] = self.OnSubFailed2006116,
        ["2006117"] = self.OnSubFailed2006117,
        ["2006118"] = self.OnSubFailed2006118,
        ["2006119"] = self.OnSubFailed2006119
    }
end

function Quest20061:DestroyPaimon(arg1)
    self.GetQuestNpcActor(self, paimonData.Npc):DestroyWithDisappear(false, function(arg1, arg2)
        self:ShowReadingDialog(100352)
    end)
end

function Quest20061:Start()
    print("Start")
end

function Quest20061:OnDestroy()
    print("OnDestroy")
end

function Quest20061:OnSubStart2006101(arg1)
    print("OnSubStart2006101")
end

function Quest20061:OnSubFinish2006101(arg1)
    print("OnSubFinish2006101")
end

function Quest20061:OnSubFailed2006101(arg1)
    print("OnSubFailed2006101")
end

function Quest20061:OnSubStart2006102(arg1)
    print("OnSubStart2006102")
    local n = math.random(1, 100)
    if 1 <= n and n <= 50 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2006103)
            actor:FinishQuestID(true, 2006104)
        end
    elseif 50 < n and n <= 100 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2006104)
            actor:FinishQuestID(true, 2006103)
        end
    end
end

function Quest20061:OnSubFinish2006102(arg1)
    print("OnSubFinish2006102")
    self:NarratorOnlyTask(datas.NarratorData1)
end

function Quest20061:OnSubFailed2006102(arg1)
    print("OnSubFailed2006102")
end

function Quest20061:OnSubStart2006103(arg1)
    print("OnSubStart2006103")
end

function Quest20061:OnSubFinish2006103(arg1)
    print("OnSubFinish2006103")
end

function Quest20061:OnSubFailed2006103(arg1)
    print("OnSubFailed2006103")
end

function Quest20061:OnSubStart2006104(arg1)
    print("OnSubStart2006104")
end

function Quest20061:OnSubFinish2006104(arg1)
    print("OnSubFinish2006104")
end

function Quest20061:OnSubFailed2006104(arg1)
    print("OnSubFailed2006104")
end

function Quest20061:OnSubStart2006105(arg1)
    print("OnSubStart2006105")
end

function Quest20061:OnSubFinish2006105(arg1)
    print("OnSubFinish2006105")
    self:NarratorOnlyTask(datas.NarratorData5)
end

function Quest20061:OnSubFailed2006105(arg1)
    print("OnSubFailed2006105")
end

function Quest20061:OnSubStart2006106(arg1)
    print("OnSubStart2006106")
end

function Quest20061:OnSubFinish2006106(arg1)
    print("OnSubFinish2006106")
end

function Quest20061:OnSubFailed2006106(arg1)
    print("OnSubFailed2006106")
end

function Quest20061:OnSubStart2006107(arg1)
    print("OnSubStart2006107")
end

function Quest20061:OnSubFinish2006107(arg1)
    print("OnSubFinish2006107")
end

function Quest20061:OnSubFailed2006107(arg1)
    print("OnSubFailed2006107")
end

function Quest20061:OnSubStart2006108(arg1)
    print("OnSubStart2006108")
end

function Quest20061:OnSubFinish2006108(arg1)
    print("OnSubFinish2006108")
    self:NarratorOnlyTask(datas.NarratorData2)
end

function Quest20061:OnSubFailed2006108(arg1)
    print("OnSubFailed2006108")
end

function Quest20061:OnSubStart2006109(arg1)
    print("OnSubStart2006109")
end

function Quest20061:OnSubFinish2006109(arg1)
    print("OnSubFinish2006109")
end

function Quest20061:OnSubFailed2006109(arg1)
    print("OnSubFailed2006109")
end

function Quest20061:OnSubStart2006110(arg1)
    print("OnSubStart2006110")
end

function Quest20061:OnSubFinish2006110(arg1)
    print("OnSubFinish2006110")
    self.CallDelay(self, 2, function()
        self:NarratorOnlyTask(datas.NarratorData3)
    end)
end

function Quest20061:OnSubFailed2006110(arg1)
    print("OnSubFailed2006110")
end

function Quest20061:OnSubStart2006111(arg1)
    print("OnSubStart2006111")
end

function Quest20061:OnSubFinish2006111(arg1)
    print("OnSubFinish2006111")
    self:NarratorOnlyTask(datas.NarratorData4)
end

function Quest20061:OnSubFailed2006111(arg1)
    print("OnSubFailed2006111")
end

function Quest20061:OnSubStart2006112(arg1)
    print("OnSubStart2006112")
end

function Quest20061:OnSubFinish2006112(arg1)
    print("OnSubFinish2006112")
end

function Quest20061:OnSubFailed2006112(arg1)
    print("OnSubFailed2006112")
end

function Quest20061:OnSubStart2006113(arg1)
    print("OnSubStart2006113")
end

function Quest20061:OnSubFinish2006113(arg1)
    print("OnSubFinish2006113")
end

function Quest20061:OnSubFailed2006113(arg1)
    print("OnSubFailed2006113")
end

function Quest20061:OnSubStart2006114(arg1)
    print("OnSubStart2006114")
end

function Quest20061:OnSubFinish2006114(arg1)
    print("OnSubFinish2006114")
end

function Quest20061:OnSubFailed2006114(arg1)
    print("OnSubFailed2006114")
end

function Quest20061:OnSubStart2006115(arg1)
    print("OnSubStart2006115")
end

function Quest20061:OnSubFinish2006115(arg1)
    print("OnSubFinish2006115")
    local questNpcActor = self:GetQuestNpcActor("Paimon")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    local dir2Euler = M.Dir2Euler(v)
    dir2Euler.x = 0
    dir2Euler.y = 0
    self:CreateQuestNpcByIdWithPos(2006115, paimonData.NpcID, 1, avatarPos, dir2Euler)
    self:RequestInteractionForceAlias("Paimon20061")
end

function Quest20061:OnSubFailed2006115(arg1)
    print("OnSubFailed2006115")
end

function Quest20061:OnSubStart2006116(arg1)
    print("OnSubStart2006116")
end

function Quest20061:OnSubFinish2006116(arg1)
    print("OnSubFinish2006116")
end

function Quest20061:OnSubFailed2006116(arg1)
    print("OnSubFailed2006116")
end

function Quest20061:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ActionSafeCall(self.DestroyPaimon)
    end
end

return Quest20061
