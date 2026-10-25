require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12002 = class("Quest12002", QuestActorProxy)
Quest12002.defaultAlias = "Quest12002"
local Q12002ClientConfig = require("Quest/Client/Q12002ClientConfig")

local paimonData = Q12002ClientConfig.PaimonData
local xingQiuData = Q12002ClientConfig.XingQiuData
local aXuData = Q12002ClientConfig.AXuData
local carData1 = Q12002ClientConfig.CarData1
local carData2 = Q12002ClientConfig.CarData2
local carData3 = Q12002ClientConfig.CarData3
local carData4 = Q12002ClientConfig.CarData4
local carData5 = Q12002ClientConfig.CarData5
local carGagetData1 = Q12002ClientConfig.CarGagetData1
local carGagetData2 = Q12002ClientConfig.CarGagetData2
local carGagetData3 = Q12002ClientConfig.CarGagetData3
local carGagetData4 = Q12002ClientConfig.CarGagetData4
local carGagetData5 = Q12002ClientConfig.CarGagetData5
local winkGagetData1 = Q12002ClientConfig.WinkGagetData1
local winkGagetData2 = Q12002ClientConfig.WinkGagetData2
local winkGagetData3 = Q12002ClientConfig.WinkGagetData3
local winkGagetData4 = Q12002ClientConfig.WinkGagetData4
local winkGagetData5 = Q12002ClientConfig.WinkGagetData5

function Quest12002:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1200201"] = self.OnSubStart1200201
    self.subStartHandlers["1200202"] = self.OnSubStart1200202
    self.subStartHandlers["1200203"] = self.OnSubStart1200203
    self.subStartHandlers["1200204"] = self.OnSubStart1200204
    self.subStartHandlers["1200205"] = self.OnSubStart1200205
    self.subStartHandlers["1200206"] = self.OnSubStart1200206
    self.subStartHandlers["1200207"] = self.OnSubStart1200207
    self.subStartHandlers["1200208"] = self.OnSubStart1200208
    self.subStartHandlers["1200209"] = self.OnSubStart1200209
    self.subStartHandlers["1200210"] = self.OnSubStart1200210
    self.subStartHandlers["1200211"] = self.OnSubStart1200211
    self.subStartHandlers["1200212"] = self.OnSubStart1200212
    self.subStartHandlers["1200213"] = self.OnSubStart1200213
    self.subStartHandlers["1200214"] = self.OnSubStart1200214
    self.subStartHandlers["1200215"] = self.OnSubStart1200215
    self.subStartHandlers["1200216"] = self.OnSubStart1200216
    self.subStartHandlers["1200217"] = self.OnSubStart1200217
    self.subStartHandlers["1200218"] = self.OnSubStart1200218
    self.subStartHandlers["1200219"] = self.OnSubStart1200219
    self.subStartHandlers["1200220"] = self.OnSubStart1200220
    self.subStartHandlers["1200221"] = self.OnSubStart1200221
end

function Quest12002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1200201"] = self.OnSubFinish1200201
    self.subFinishHandlers["1200202"] = self.OnSubFinish1200202
    self.subFinishHandlers["1200203"] = self.OnSubFinish1200203
    self.subFinishHandlers["1200204"] = self.OnSubFinish1200204
    self.subFinishHandlers["1200205"] = self.OnSubFinish1200205
    self.subFinishHandlers["1200206"] = self.OnSubFinish1200206
    self.subFinishHandlers["1200207"] = self.OnSubFinish1200207
    self.subFinishHandlers["1200208"] = self.OnSubFinish1200208
    self.subFinishHandlers["1200209"] = self.OnSubFinish1200209
    self.subFinishHandlers["1200210"] = self.OnSubFinish1200210
    self.subFinishHandlers["1200211"] = self.OnSubFinish1200211
    self.subFinishHandlers["1200212"] = self.OnSubFinish1200212
    self.subFinishHandlers["1200213"] = self.OnSubFinish1200213
    self.subFinishHandlers["1200214"] = self.OnSubFinish1200214
    self.subFinishHandlers["1200215"] = self.OnSubFinish1200215
    self.subFinishHandlers["1200216"] = self.OnSubFinish1200216
    self.subFinishHandlers["1200217"] = self.OnSubFinish1200217
    self.subFinishHandlers["1200218"] = self.OnSubFinish1200218
    self.subFinishHandlers["1200219"] = self.OnSubFinish1200219
    self.subFinishHandlers["1200220"] = self.OnSubFinish1200220
    self.subFinishHandlers["1200221"] = self.OnSubFinish1200221
end

local tbl = {}
local v = carData2
local v2 = carData3
local v3 = carData4
local v4 = carData5
tbl[1] = carData1
tbl[2] = v
tbl[3] = v2
tbl[4] = v3
tbl[5] = v4

function Quest12002:Guild()
    local v = {}
    for i = 1, 5 do
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = tbl[i].Pos
        if tbl[i].state == true then
            v[i] = M.Dist(avatarPos, pos)
        end
    end

    local n = 1
    local n2 = 10000
    for i = 1, 5 do
        if v[i] ~= nil then
            if n2 > v[i] then
                n2 = v[i]
                n = i
            end
        end
    end

    TargetPos = tbl[n].Pos
    self:OpenCompass()
    self:CheckLocation()
end

function Quest12002:CheckLocation()
    self:CallDelay(2, self.Guild)
end

function Quest12002:OpenCompass()
    Quest12002:CallOnElemViewOpen(function()
        if TargetPos ~= nil then
            local avatarPos = actorUtils.GetAvatarPos()
            local tbl = {x = TargetPos.x - avatarPos.x, y = 0, z = TargetPos.z - avatarPos.z}
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 2
            local v = actorUtils.GetAvatarPos()
            v.x = v.x + avatarForward.x * n
            v.y = v.y
            v.z = v.z + avatarForward.z * n
            actorMgr:GetActor(Q12002ClientConfig.ActorAlias):SpawnGadgetByIdWithPos(1200214, 70700006, 1, v, M.Dir2Euler(tbl))
            Quest12002.CloseCompass()
        end
    end)
end

function Quest12002:CloseCompass()
    print("CloseCompass")
    Quest12002:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q10101Compass")
        Quest12002.OpenCompass()
    end)
end

function Quest12002:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest12002:XingQiuDestroy()
    local questNpcActor = self:GetQuestNpcActor(xingQiuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12002:AXuDestroy()
    local questNpcActor = self:GetQuestNpcActor(aXuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest12002:InvokeOnInteraction(arg1)
    print("10200 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:CallDelay(0.5, function(arg1)
            local actor = actorMgr:GetActor(q12002fg.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 1200203)
            end
        end)
    end
end

function Quest12002:OnSubStart1200201(arg1)
    print("********1200201 start")
    self:CallDelay(0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, xingQiuData.ID)
        arg1_2:GetQuestNpcActor(xingQiuData.Alias):DoFreeStyle(1330)
    end, nil, task, "QUEST_Black_Q1200010")

    actorMgr:CreateActorWithPos("Q1200201Trigger", "Actor/Gadget/Q1200201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1200201AXu").pos, sceneData:GetDummyPoint(3, "Q1200201AXu").rot, true, false)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2022", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, aXuData.ID)
end

function Quest12002:OnSubFinish1200201(arg1)
    print("********1200201 finish")
end

function Quest12002:OnSubStart1200203(arg1)
    print("********1200203 start")
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2022", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest12002:OnSubFinish1200203(arg1)
    print("********1200203 Finish")
end

function Quest12002:OnSubStart1200202(arg1)
    print("********1200202 start")
    self:TransmitPlayerById(arg1, 1)
end

function Quest12002:OnSubFinish1200202(arg1)
    print("********1200202 finish")
end

function Quest12002:OnSubStart1200221(arg1)
    print("********1200211 start")
    self:NotifyTo("Npc2063", NpcUtil.NpcEventType.HIDESELF, true)
    self:ShowBlackScreen(0, 1.5, 0.5, function(arg1_2)
        arg1_2:CallDelay(1, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, aXuData.ID)
            arg1_2:CreateQuestNpc(arg1, paimonData.ID)
            arg1_2:RequestInteraction("Paimon")
            print("SHOW BLACK SCREEN 12000")
        end)
    end, nil, task, "QUEST_Black_Q1200010")
end

function Quest12002:OnSubFinish1200221(arg1)
    print("********1200203 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.AXuDestroy)
    self.uActor:PlayerStandFromChair(-30)
    self:ActionSafeCall(self:NarratorOnlyTaskLegacy(Q12002ClientConfig.NarratorData5, nil, "StoryCut"))
end

function Quest12002:OnSubStart1200204(arg1)
    print("********1200204 start")
end

function Quest12002:OnSubFinish1200204(arg1)
    print("********1200204 Finish")
end

function Quest12002:OnSubStart1200205(arg1) end

function Quest12002:OnSubFinish1200205(arg1)
    self:NotifyTo("Npc1627", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2022", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest12002:OnSubStart1200206(arg1) end
function Quest12002:OnSubFinish1200206(arg1) end
function Quest12002:OnSubStart1200215(arg1) end

function Quest12002:OnSubFinish1200215(arg1)
    self:ActionSafeCall(self:NarratorOnlyTaskLegacy(Q12002ClientConfig.NarratorData2, nil, "StoryCut"))
end

function Quest12002:OnSubStart1200207(arg1)
    self:NotifyTo("Npc2063", NpcUtil.NpcEventType.STARTDAILY, true)
    actorMgr:CreateActorWithPos("Q1200207Trigger", "Actor/Gadget/Q1200207Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Npc1628Born").pos, sceneData:GetDummyPoint(3, "Npc1628Born").rot, true, false)
end

function Quest12002:OnSubFinish1200207(arg1) end
function Quest12002:OnSubStart1200208(arg1) end

function Quest12002:OnSubFinish1200208(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12002:OnSubStart1200209(arg1)
    self:CreateQuestNpc(arg1, carData1.ID)
    self:SpawnGadget(arg1, 71700047, 2)
    local pos1 = winkGagetData1.Pos1
    self:SpawnGadgetWithPos(arg1, 71700053, 1, pos1, M.Dir2Euler(pos1))
    print("********1200209 SpawnItem")
end

function Quest12002:OnSubFinish1200209(arg1)
    carData1.state = false
    globalActor:UnSpawn(winkGagetData1.Alias)
end

function Quest12002:OnSubStart1200216(arg1) end
function Quest12002:OnSubFinish1200216(arg1) end

function Quest12002:OnSubStart1200212(arg1)
    self:CreateQuestNpc(arg1, carData2.ID)
    self:SpawnGadget(arg1, 71700047, 2)
    local pos1 = winkGagetData2.Pos1
    self:SpawnGadgetWithPos(arg1, 71700053, 1, pos1, M.Dir2Euler(pos1))
    print("********1200209 SpawnItem")
end

function Quest12002:OnSubFinish1200212(arg1)
    carData2.state = false
    globalActor:UnSpawn(winkGagetData2.Alias)
end

function Quest12002:OnSubStart1200217(arg1) end
function Quest12002:OnSubFinish1200217(arg1) end

function Quest12002:OnSubStart1200213(arg1)
    self:CreateQuestNpc(arg1, carData3.ID)
    self:SpawnGadget(arg1, 71700047, 2)
    local pos1 = winkGagetData3.Pos1
    self:SpawnGadgetWithPos(arg1, 71700053, 1, pos1, M.Dir2Euler(pos1))
    print("********1200209 SpawnItem")
end

function Quest12002:OnSubFinish1200213(arg1)
    carData3.state = false
    globalActor:UnSpawn(winkGagetData3.Alias)
end

function Quest12002:OnSubStart1200219(arg1)
    self:CreateQuestNpc(arg1, carData4.ID)
    self:SpawnGadget(arg1, 71700047, 2)
    local pos1 = winkGagetData4.Pos1
    self:SpawnGadgetWithPos(arg1, 71700053, 1, pos1, M.Dir2Euler(pos1))
    print("********1200209 SpawnItem")
end

function Quest12002:OnSubFinish1200219(arg1)
    carData4.state = false
    globalActor:UnSpawn(winkGagetData4.Alias)
end

function Quest12002:OnSubStart1200220(arg1)
    self:CreateQuestNpc(arg1, carData5.ID)
    self:SpawnGadget(arg1, 71700047, 2)
    local pos1 = winkGagetData5.Pos1
    self:SpawnGadgetWithPos(arg1, 71700053, 1, pos1, M.Dir2Euler(pos1))
    print("********1200209 SpawnItem")
end

function Quest12002:OnSubFinish1200220(arg1)
    carData5.state = false
    globalActor:UnSpawn(winkGagetData5.Alias)
end

function Quest12002:OnSubStart1200214(arg1) end

function Quest12002:OnSubFinish1200214(arg1)
    self:ActionSafeCall(self:NarratorOnlyTaskLegacy(Q12002ClientConfig.NarratorData4, nil, "StoryCut"))
end

function Quest12002:OnSubStart1200210(arg1)
    key12002 = nil
end

function Quest12002:OnSubFinish1200210(arg1)
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn(carData1.Alias)
    globalActor:UnSpawn(carData2.Alias)
    globalActor:UnSpawn(carData3.Alias)
    globalActor:UnSpawn(carData4.Alias)
    globalActor:UnSpawn(carData5.Alias)
    globalActor:UnSpawn(carGagetData1.Alias)
    globalActor:UnSpawn(carGagetData2.Alias)
    globalActor:UnSpawn(carGagetData3.Alias)
    globalActor:UnSpawn(carGagetData4.Alias)
    globalActor:UnSpawn(carGagetData5.Alias)
    globalActor:UnSpawn("Q10101Compass")
end

function Quest12002:OnSubStart1200211(arg1) end

function Quest12002:OnSubFinish1200211(arg1)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest12002:Start() end
function Quest12002:OnDestroy() end
return Quest12002
