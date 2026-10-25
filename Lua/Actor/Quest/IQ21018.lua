require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21018 = class("Quest21018", QuestActorProxy)
Quest21018.defaultAlias = "Quest21018"
local NPCUtil = require("Actor/Npc/NPCUtil")

local clientData
local subIDs
local actors
local npcData_AHide
local npcData_BHide
local npcData_CHide
local npcData_DHide
local npcData_AReturn
local npcData_BReturn
local npcData_CReturn
local npcData_DReturn
local datas

function Quest21018:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    actors = clientData.Actors
    npcData_AHide = actors.NpcData_AHide
    npcData_BHide = actors.NpcData_BHide
    npcData_CHide = actors.NpcData_CHide
    npcData_DHide = actors.NpcData_DHide
    npcData_AReturn = actors.NpcData_AReturn
    npcData_BReturn = actors.NpcData_BReturn
    npcData_CReturn = actors.NpcData_CReturn
    npcData_DReturn = actors.NpcData_DReturn
    datas = clientData.Datas
end

function Quest21018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2101801"] = self.OnSubStart2101801,
        ["2101802"] = self.OnSubStart2101802,
        ["2101803"] = self.OnSubStart2101803,
        ["2101804"] = self.OnSubStart2101804,
        ["2101805"] = self.OnSubStart2101805,
        ["2101806"] = self.OnSubStart2101806,
        ["2101807"] = self.OnSubStart2101807,
        ["2101808"] = self.OnSubStart2101808,
        ["2101809"] = self.OnSubStart2101809,
        ["2101810"] = self.OnSubStart2101810,
        ["2101811"] = self.OnSubStart2101811,
        ["2101812"] = self.OnSubStart2101812
    }
end

function Quest21018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2101801"] = self.OnSubFinish2101801,
        ["2101802"] = self.OnSubFinish2101802,
        ["2101803"] = self.OnSubFinish2101803,
        ["2101804"] = self.OnSubFinish2101804,
        ["2101805"] = self.OnSubFinish2101805,
        ["2101806"] = self.OnSubFinish2101806,
        ["2101807"] = self.OnSubFinish2101807,
        ["2101808"] = self.OnSubFinish2101808,
        ["2101809"] = self.OnSubFinish2101809,
        ["2101810"] = self.OnSubFinish2101810,
        ["2101811"] = self.OnSubFinish2101811,
        ["2101812"] = self.OnSubFinish2101812
    }
end

function Quest21018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2101801"] = self.OnSubFailed2101801,
        ["2101802"] = self.OnSubFailed2101802,
        ["2101803"] = self.OnSubFailed2101803,
        ["2101804"] = self.OnSubFailed2101804,
        ["2101805"] = self.OnSubFailed2101805,
        ["2101806"] = self.OnSubFailed2101806,
        ["2101807"] = self.OnSubFailed2101807,
        ["2101808"] = self.OnSubFailed2101808,
        ["2101809"] = self.OnSubFailed2101809,
        ["2101810"] = self.OnSubFailed2101810,
        ["2101811"] = self.OnSubFailed2101811,
        ["2101812"] = self.OnSubFailed2101812
    }
end

function Quest21018:Start()
    print("Start")
end

function Quest21018:OnDestroy()
    print("OnDestroy")
end

function Quest21018:OnSubStart2101801(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.STARTDAILY, true)
    print("OnSubStart2101801")
end

function Quest21018:OnSubFinish2101801(arg1)
    print("OnSubFinish2101801")
    self:ShowBlackScreen(1, 2, 1, function(arg1)
        arg1:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
        arg1:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
        arg1:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
        arg1:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230901, 0, actors.NpcData_AHide.pos, actors.NpcData_AHide.rot)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230401, 0, actors.NpcData_BHide.pos, actors.NpcData_BHide.rot)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230301, 0, actors.NpcData_CHide.pos, actors.NpcData_CHide.rot)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230801, 0, actors.NpcData_DHide.pos, actors.NpcData_DHide.rot)
    end)
end

function Quest21018:OnSubFailed2101801(arg1)
    print("OnSubFailed2101801")
end

function Quest21018:OnSubStart2101802(arg1)
    print("OnSubStart2101802")
    local questNpcActor = self:GetQuestNpcActor(clientData.ActorAlias)
    if questNpcActor ~= nil then
        questNpcActor:FinishQuestID(false, 2101802)
    end
end

function Quest21018:OnSubFinish2101802(arg1)
    print("OnSubFinish2101802")
end

function Quest21018:OnSubFailed2101802(arg1)
    print("OnSubFailed2101802")
end

function Quest21018:OnSubStart2101803(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101803")
end

function Quest21018:OnSubFinish2101803(arg1)
    print("OnSubFinish2101803")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({actors.NpcData_AReturn.alias})
    self:ShowBlackScreen(1, 2, 1, function(arg1)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230901, 0, actors.NpcData_AReturn.pos, actors.NpcData_AReturn.rot)
    end, nil, entityCreateTask)
end

function Quest21018:OnSubFailed2101803(arg1)
    print("OnSubFailed2101803")
end

function Quest21018:OnSubStart2101804(arg1)
    print("OnSubStart2101804")
end

function Quest21018:OnSubFinish2101804(arg1)
    print("OnSubFinish2101804")
end

function Quest21018:OnSubFailed2101804(arg1)
    print("OnSubFailed2101804")
end

function Quest21018:OnSubStart2101805(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101805")
end

function Quest21018:OnSubFinish2101805(arg1)
    print("OnSubFinish2101805")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({actors.NpcData_BReturn.alias})
    self:ShowBlackScreen(1, 2, 1, function(arg1)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230401, 0, actors.NpcData_BReturn.pos, actors.NpcData_BReturn.rot)
    end, nil, entityCreateTask)
end

function Quest21018:OnSubFailed2101805(arg1)
    print("OnSubFailed2101805")
end

function Quest21018:OnSubStart2101806(arg1)
    print("OnSubStart2101806")
end

function Quest21018:OnSubFinish2101806(arg1)
    print("OnSubFinish2101806")
end

function Quest21018:OnSubFailed2101806(arg1)
    print("OnSubFailed2101806")
end

function Quest21018:OnSubStart2101807(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101807")
end

function Quest21018:OnSubFinish2101807(arg1)
    print("OnSubFinish2101807")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({actors.NpcData_CReturn.alias})
    self:ShowBlackScreen(1, 2, 1, function(arg1)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230301, 0, actors.NpcData_CReturn.pos, actors.NpcData_CReturn.rot)
    end, nil, entityCreateTask)
end

function Quest21018:OnSubFailed2101807(arg1)
    print("OnSubFailed2101807")
end

function Quest21018:OnSubStart2101808(arg1)
    print("OnSubStart2101808")
end

function Quest21018:OnSubFinish2101808(arg1)
    print("OnSubFinish2101808")
end

function Quest21018:OnSubFailed2101808(arg1)
    print("OnSubFailed2101808")
end

function Quest21018:OnSubStart2101809(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101809")
end

function Quest21018:OnSubFinish2101809(arg1)
    print("OnSubFinish2101809")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({actors.NpcData_DReturn.alias})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcByIdWithPos("2101803", 230801, 0, actors.NpcData_DReturn.pos, actors.NpcData_DReturn.rot)
    end, nil, entityCreateTask)
end

function Quest21018:OnSubFailed2101809(arg1)
    print("OnSubFailed2101809")
end

function Quest21018:OnSubStart2101810(arg1)
    print("OnSubStart2101810")
end

function Quest21018:OnSubFinish2101810(arg1)
    print("OnSubFinish2101810")
end

function Quest21018:OnSubFailed2101810(arg1)
    print("OnSubFailed2101810")
end

function Quest21018:OnSubStart2101811(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101811")
end

function Quest21018:OnSubFinish2101811(arg1)
    print("OnSubFinish2101811")
end

function Quest21018:OnSubFailed2101811(arg1)
    print("OnSubFailed2101811")
end

function Quest21018:OnSubStart2101812(arg1)
    self:NotifyTo("Npc2309", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2304", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2303", NPCUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2308", NPCUtil.NpcEventType.HIDESELF, true)
    print("OnSubStart2101812")
end

function Quest21018:OnSubFinish2101812(arg1)
    print("OnSubFinish2101812")
    local createEntityCreateTask = curtainUtils.CreateEntityCreateTask
    local tbl = {}
    local str = "Npc230901"
    local v = "Npc2304"
    local str2 = "Npc230401"
    local str3 = "Npc2303"
    local str4 = "Npc230301"
    local str5 = "Npc2308"
    local str6 = "Npc230801"
    tbl[1] = "Npc2309"
    tbl[2] = str
    tbl[3] = v
    tbl[4] = str2
    tbl[5] = str3
    tbl[6] = str4
    tbl[7] = str5
    tbl[8] = str6
    local v2 = createEntityCreateTask(tbl)
    self:ShowBlackScreen(1, 2, 1, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(arg1.clientData.Actors.NpcData_AReturn.alias)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor(arg1.clientData.Actors.NpcData_BReturn.alias)
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor(arg1.clientData.Actors.NpcData_CReturn.alias)
        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end

        local questNpcActor3 = arg1:GetQuestNpcActor(arg1.clientData.Actors.NpcData_DReturn.alias)
        if questNpcActor3 ~= nil then
            questNpcActor3:Destroy(false)
        end

        arg1:NotifyTo("Npc2309", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc2304", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc2303", NPCUtil.NpcEventType.STARTDAILY, true)
        arg1:NotifyTo("Npc2308", NPCUtil.NpcEventType.STARTDAILY, true)
    end, nil, v2)
end

function Quest21018:OnSubFailed2101812(arg1)
    print("OnSubFailed2101812")
end

return Quest21018
