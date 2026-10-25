require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20051 = class("Quest20051", QuestActorProxy)
Quest20051.defaultAlias = "Quest20051"
local clientData
local nPC1Data
local nPC2Data
local nPC3Data
local nPC4Data
local new
local drinkData
local drinkResult
local drinkResult_MM
local drinkAward
local n
print("20051start")

function Quest20051:OnDataLoaded()
    clientData = self.clientData
    nPC1Data = clientData.NPC1Data
    nPC2Data = clientData.NPC2Data
    nPC3Data = clientData.NPC3Data
    nPC4Data = clientData.NPC4Data
    new = clientData.Rectification:new()
    new.Drink = 0
    drinkData = clientData.DrinkData
    drinkResult = clientData.DrinkResult
    drinkResult_MM = clientData.DrinkResult_MM
    drinkAward = clientData.DrinkAward
    n = 0
end

function Quest20051:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2005101"] = self.OnSubStart2005101
    self.subStartHandlers["2005102"] = self.OnSubStart2005102
    self.subStartHandlers["2005160"] = self.OnSubStart2005160
    self.subStartHandlers["2005161"] = self.OnSubStart2005161
    self.subStartHandlers["2005103"] = self.OnSubStart2005103
    self.subStartHandlers["2005104"] = self.OnSubStart2005104
    self.subStartHandlers["2005105"] = self.OnSubStart2005105
    self.subStartHandlers["2005106"] = self.OnSubStart2005106
    self.subStartHandlers["2005166"] = self.OnSubStart2005166
    self.subStartHandlers["2005108"] = self.OnSubStart2005108
    self.subStartHandlers["2005109"] = self.OnSubStart2005109
    self.subStartHandlers["2005110"] = self.OnSubStart2005110
    self.subStartHandlers["2005111"] = self.OnSubStart2005111
    self.subStartHandlers["2005112"] = self.OnSubStart2005112
    self.subStartHandlers["2005113"] = self.OnSubStart2005113
    self.subStartHandlers["2005114"] = self.OnSubStart2005114
    self.subStartHandlers["2005115"] = self.OnSubStart2005115
    self.subStartHandlers["2005124"] = self.OnSubStart2005124
    self.subStartHandlers["2005125"] = self.OnSubStart2005125
    self.subStartHandlers["2005107"] = self.OnSubStart2005107
    self.subStartHandlers["2005116"] = self.OnSubStart2005116
    self.subStartHandlers["2005117"] = self.OnSubStart2005117
    self.subStartHandlers["2005118"] = self.OnSubStart2005118
    self.subStartHandlers["2005119"] = self.OnSubStart2005119
    self.subStartHandlers["2005120"] = self.OnSubStart2005120
    self.subStartHandlers["2005121"] = self.OnSubStart2005121
    self.subStartHandlers["2005122"] = self.OnSubStart2005122
    self.subStartHandlers["2005123"] = self.OnSubStart2005123
    self.subStartHandlers["2005137"] = self.OnSubStart2005137
    self.subStartHandlers["2005138"] = self.OnSubStart2005138
    self.subStartHandlers["2005139"] = self.OnSubStart2005139
    self.subStartHandlers["2005140"] = self.OnSubStart2005140
    self.subStartHandlers["2005141"] = self.OnSubStart2005141
    self.subStartHandlers["2005142"] = self.OnSubStart2005142
    self.subStartHandlers["2005143"] = self.OnSubStart2005143
    self.subStartHandlers["2005144"] = self.OnSubStart2005144
    self.subStartHandlers["2005163"] = self.OnSubStart2005163
    self.subStartHandlers["2005145"] = self.OnSubStart2005145
    self.subStartHandlers["2005146"] = self.OnSubStart2005146
    self.subStartHandlers["2005147"] = self.OnSubStart2005147
    self.subStartHandlers["2005148"] = self.OnSubStart2005148
    self.subStartHandlers["2005164"] = self.OnSubStart2005164
    self.subStartHandlers["2005165"] = self.OnSubStart2005165
    self.subStartHandlers["2005149"] = self.OnSubStart2005149
    self.subStartHandlers["2005150"] = self.OnSubStart2005150
    self.subStartHandlers["2005151"] = self.OnSubStart2005151
    self.subStartHandlers["2005152"] = self.OnSubStart2005152
    self.subStartHandlers["2005153"] = self.OnSubStart2005153
    self.subStartHandlers["2005154"] = self.OnSubStart2005154
    self.subStartHandlers["2005155"] = self.OnSubStart2005155
    self.subStartHandlers["2005156"] = self.OnSubStart2005156
    self.subStartHandlers["2005157"] = self.OnSubStart2005157
    self.subStartHandlers["2005159"] = self.OnSubStart2005159
    self.subStartHandlers["2005170"] = self.OnSubStart2005170
    self.subStartHandlers["2005171"] = self.OnSubStart2005171
    self.subStartHandlers["2005172"] = self.OnSubStart2005172
    self.subStartHandlers["2005173"] = self.OnSubStart2005173
    self.subStartHandlers["2005174"] = self.OnSubStart2005174
    self.subStartHandlers["2005175"] = self.OnSubStart2005175
    self.subStartHandlers["2005176"] = self.OnSubStart2005176
    self.subStartHandlers["2005177"] = self.OnSubStart2005177
    self.subStartHandlers["2005178"] = self.OnSubStart2005178
    self.subStartHandlers["2005179"] = self.OnSubStart2005179
    self.subStartHandlers["2005180"] = self.OnSubStart2005180
    self.subStartHandlers["2005181"] = self.OnSubStart2005181
    self.subStartHandlers["2005182"] = self.OnSubStart2005182
    self.subStartHandlers["2005183"] = self.OnSubStart2005183
    self.subStartHandlers["2005184"] = self.OnSubStart2005184
    self.subStartHandlers["2005185"] = self.OnSubStart2005185
    self.subStartHandlers["2005186"] = self.OnSubStart2005186
    self.subStartHandlers["2005187"] = self.OnSubStart2005187
    self.subStartHandlers["2005188"] = self.OnSubStart2005188
    self.subStartHandlers["2005189"] = self.OnSubStart2005189
    self.subStartHandlers["2005158"] = self.OnSubStart2005158
end

function Quest20051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2005101"] = self.OnSubFinish2005101
    self.subFinishHandlers["2005102"] = self.OnSubFinish2005102
    self.subFinishHandlers["2005160"] = self.OnSubFinish2005160
    self.subFinishHandlers["2005161"] = self.OnSubFinish2005161
    self.subFinishHandlers["2005103"] = self.OnSubFinish2005103
    self.subFinishHandlers["2005104"] = self.OnSubFinish2005104
    self.subFinishHandlers["2005105"] = self.OnSubFinish2005105
    self.subFinishHandlers["2005106"] = self.OnSubFinish2005106
    self.subFinishHandlers["2005166"] = self.OnSubFinish2005166
    self.subFinishHandlers["2005108"] = self.OnSubFinish2005108
    self.subFinishHandlers["2005109"] = self.OnSubFinish2005109
    self.subFinishHandlers["2005110"] = self.OnSubFinish2005110
    self.subFinishHandlers["2005111"] = self.OnSubFinish2005111
    self.subFinishHandlers["2005112"] = self.OnSubFinish2005112
    self.subFinishHandlers["2005113"] = self.OnSubFinish2005113
    self.subFinishHandlers["2005114"] = self.OnSubFinish2005114
    self.subFinishHandlers["2005115"] = self.OnSubFinish2005115
    self.subFinishHandlers["2005124"] = self.OnSubFinish2005124
    self.subFinishHandlers["2005125"] = self.OnSubFinish2005125
    self.subFinishHandlers["2005107"] = self.OnSubFinish2005107
    self.subFinishHandlers["2005116"] = self.OnSubFinish2005116
    self.subFinishHandlers["2005117"] = self.OnSubFinish2005117
    self.subFinishHandlers["2005118"] = self.OnSubFinish2005118
    self.subFinishHandlers["2005119"] = self.OnSubFinish2005119
    self.subFinishHandlers["2005120"] = self.OnSubFinish2005120
    self.subFinishHandlers["2005121"] = self.OnSubFinish2005121
    self.subFinishHandlers["2005122"] = self.OnSubFinish2005122
    self.subFinishHandlers["2005123"] = self.OnSubFinish2005123
    self.subFinishHandlers["2005137"] = self.OnSubFinish2005137
    self.subFinishHandlers["2005138"] = self.OnSubFinish2005138
    self.subFinishHandlers["2005139"] = self.OnSubFinish2005139
    self.subFinishHandlers["2005140"] = self.OnSubFinish2005140
    self.subFinishHandlers["2005141"] = self.OnSubFinish2005141
    self.subFinishHandlers["2005142"] = self.OnSubFinish2005142
    self.subFinishHandlers["2005143"] = self.OnSubFinish2005143
    self.subFinishHandlers["2005144"] = self.OnSubFinish2005144
    self.subFinishHandlers["2005163"] = self.OnSubFinish2005163
    self.subFinishHandlers["2005145"] = self.OnSubFinish2005145
    self.subFinishHandlers["2005146"] = self.OnSubFinish2005146
    self.subFinishHandlers["2005147"] = self.OnSubFinish2005147
    self.subFinishHandlers["2005148"] = self.OnSubFinish2005148
    self.subFinishHandlers["2005164"] = self.OnSubFinish2005164
    self.subFinishHandlers["2005165"] = self.OnSubFinish2005165
    self.subFinishHandlers["2005149"] = self.OnSubFinish2005149
    self.subFinishHandlers["2005150"] = self.OnSubFinish2005150
    self.subFinishHandlers["2005151"] = self.OnSubFinish2005151
    self.subFinishHandlers["2005152"] = self.OnSubFinish2005152
    self.subFinishHandlers["2005153"] = self.OnSubFinish2005153
    self.subFinishHandlers["2005154"] = self.OnSubFinish2005154
    self.subFinishHandlers["2005155"] = self.OnSubFinish2005155
    self.subFinishHandlers["2005156"] = self.OnSubFinish2005156
    self.subFinishHandlers["2005157"] = self.OnSubFinish2005157
    self.subFinishHandlers["2005159"] = self.OnSubFinish2005159
    self.subFinishHandlers["2005170"] = self.OnSubFinish2005170
    self.subFinishHandlers["2005171"] = self.OnSubFinish2005171
    self.subFinishHandlers["2005172"] = self.OnSubFinish2005172
    self.subFinishHandlers["2005173"] = self.OnSubFinish2005173
    self.subFinishHandlers["2005174"] = self.OnSubFinish2005174
    self.subFinishHandlers["2005175"] = self.OnSubFinish2005175
    self.subFinishHandlers["2005176"] = self.OnSubFinish2005176
    self.subFinishHandlers["2005177"] = self.OnSubFinish2005177
    self.subFinishHandlers["2005178"] = self.OnSubFinish2005178
    self.subFinishHandlers["2005179"] = self.OnSubFinish2005179
    self.subFinishHandlers["2005180"] = self.OnSubFinish2005180
    self.subFinishHandlers["2005181"] = self.OnSubFinish2005181
    self.subFinishHandlers["2005182"] = self.OnSubFinish2005182
    self.subFinishHandlers["2005183"] = self.OnSubFinish2005183
    self.subFinishHandlers["2005184"] = self.OnSubFinish2005184
    self.subFinishHandlers["2005185"] = self.OnSubFinish2005185
    self.subFinishHandlers["2005186"] = self.OnSubFinish2005186
    self.subFinishHandlers["2005187"] = self.OnSubFinish2005187
    self.subFinishHandlers["2005188"] = self.OnSubFinish2005188
    self.subFinishHandlers["2005189"] = self.OnSubFinish2005189
    self.subFinishHandlers["2005158"] = self.OnSubFinish2005158
end

function Quest20051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2005101"] = self.OnFailedStart2005101
    self.subFailedHandlers["2005102"] = self.OnFailedStart2005102
    self.subFailedHandlers["2005160"] = self.OnFailedStart2005160
    self.subFailedHandlers["2005161"] = self.OnFailedStart2005161
    self.subFailedHandlers["2005103"] = self.OnFailedStart2005103
    self.subFailedHandlers["2005104"] = self.OnFailedStart2005104
    self.subFailedHandlers["2005105"] = self.OnFailedStart2005105
    self.subFailedHandlers["2005106"] = self.OnFailedStart2005106
    self.subFailedHandlers["2005166"] = self.OnFailedStart2005166
    self.subFailedHandlers["2005108"] = self.OnFailedStart2005108
    self.subFailedHandlers["2005109"] = self.OnFailedStart2005109
    self.subFailedHandlers["2005110"] = self.OnFailedStart2005110
    self.subFailedHandlers["2005111"] = self.OnFailedStart2005111
    self.subFailedHandlers["2005112"] = self.OnFailedStart2005112
    self.subFailedHandlers["2005113"] = self.OnFailedStart2005113
    self.subFailedHandlers["2005114"] = self.OnFailedStart2005114
    self.subFailedHandlers["2005115"] = self.OnFailedStart2005115
    self.subFailedHandlers["2005124"] = self.OnFailedStart2005124
    self.subFailedHandlers["2005125"] = self.OnFailedStart2005125
    self.subFailedHandlers["2005107"] = self.OnFailedStart2005107
    self.subFailedHandlers["2005116"] = self.OnFailedStart2005116
    self.subFailedHandlers["2005117"] = self.OnFailedStart2005117
    self.subFailedHandlers["2005118"] = self.OnFailedStart2005118
    self.subFailedHandlers["2005119"] = self.OnFailedStart2005119
    self.subFailedHandlers["2005120"] = self.OnFailedStart2005120
    self.subFailedHandlers["2005121"] = self.OnFailedStart2005121
    self.subFailedHandlers["2005122"] = self.OnFailedStart2005122
    self.subFailedHandlers["2005123"] = self.OnFailedStart2005123
    self.subFailedHandlers["2005137"] = self.OnFailedStart2005137
    self.subFailedHandlers["2005138"] = self.OnFailedStart2005138
    self.subFailedHandlers["2005139"] = self.OnFailedStart2005139
    self.subFailedHandlers["2005140"] = self.OnFailedStart2005140
    self.subFailedHandlers["2005141"] = self.OnFailedStart2005141
    self.subFailedHandlers["2005142"] = self.OnFailedStart2005142
    self.subFailedHandlers["2005143"] = self.OnFailedStart2005143
    self.subFailedHandlers["2005144"] = self.OnFailedStart2005144
    self.subFailedHandlers["2005163"] = self.OnFailedStart2005163
    self.subFailedHandlers["2005145"] = self.OnFailedStart2005145
    self.subFailedHandlers["2005146"] = self.OnFailedStart2005146
    self.subFailedHandlers["2005147"] = self.OnFailedStart2005147
    self.subFailedHandlers["2005148"] = self.OnFailedStart2005148
    self.subFailedHandlers["2005164"] = self.OnFailedStart2005164
    self.subFailedHandlers["2005165"] = self.OnFailedStart2005165
    self.subFailedHandlers["2005149"] = self.OnFailedStart2005149
    self.subFailedHandlers["2005150"] = self.OnFailedStart2005150
    self.subFailedHandlers["2005151"] = self.OnFailedStart2005151
    self.subFailedHandlers["2005152"] = self.OnFailedStart2005152
    self.subFailedHandlers["2005153"] = self.OnFailedStart2005153
    self.subFailedHandlers["2005154"] = self.OnFailedStart2005154
    self.subFailedHandlers["2005155"] = self.OnFailedStart2005155
    self.subFailedHandlers["2005156"] = self.OnFailedStart2005156
    self.subFailedHandlers["2005157"] = self.OnFailedStart2005157
    self.subFailedHandlers["2005159"] = self.OnFailedStart2005159
    self.subFailedHandlers["2005170"] = self.OnFailedStart2005170
    self.subFailedHandlers["2005171"] = self.OnFailedStart2005171
    self.subFailedHandlers["2005172"] = self.OnFailedStart2005172
    self.subFailedHandlers["2005173"] = self.OnFailedStart2005173
    self.subFailedHandlers["2005174"] = self.OnFailedStart2005174
    self.subFailedHandlers["2005175"] = self.OnFailedStart2005175
    self.subFailedHandlers["2005176"] = self.OnFailedStart2005176
    self.subFailedHandlers["2005177"] = self.OnFailedStart2005177
    self.subFailedHandlers["2005178"] = self.OnFailedStart2005178
    self.subFailedHandlers["2005179"] = self.OnFailedStart2005179
    self.subFailedHandlers["2005180"] = self.OnFailedStart2005180
    self.subFailedHandlers["2005181"] = self.OnFailedStart2005181
    self.subFailedHandlers["2005182"] = self.OnFailedStart2005182
    self.subFailedHandlers["2005183"] = self.OnFailedStart2005183
    self.subFailedHandlers["2005184"] = self.OnFailedStart2005184
    self.subFailedHandlers["2005185"] = self.OnFailedStart2005185
    self.subFailedHandlers["2005186"] = self.OnFailedStart2005186
    self.subFailedHandlers["2005187"] = self.OnFailedStart2005187
    self.subFailedHandlers["2005188"] = self.OnFailedStart2005188
    self.subFailedHandlers["2005189"] = self.OnFailedStart2005189
    self.subFailedHandlers["2005158"] = self.OnFailedStart2005158
end

function Quest20051:Rewind_NPC(arg1)
    local tbl = {}
    if self:GetSubQuestState(2005108) == 3 then
        tbl = nPC1Data
        self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true)
    else
        if self:GetSubQuestState(2005109) == 3 then
            tbl = nPC2Data
            self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
        else
            if self:GetSubQuestState(2005110) == 3 then
                tbl = nPC3Data
                self:NotifyTo("Npc1537", NpcUtil.NpcEventType.HIDESELF, true)
            else
                if self:GetSubQuestState(2005111) == 3 then
                    tbl = nPC4Data
                    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
                    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)
                end
            end
        end
    end

    if self:GetQuestNpcActorNoDummy(tbl.Npc) == nil then
        self:CreateQuestNpc(arg1, tbl.NpcID)
        local questNpcActor = self:GetQuestNpcActor(tbl.Npc)
        self:CallDelay(3, function()
            questNpcActor:SitOnChair(8020)
            questNpcActor:EnableInteraction(true)
        end)
    end
end

function Quest20051:NPCReInteractionProtected(arg1, arg2, arg3, arg4, arg5)
    if self:GetSubQuestState(arg2) == arg3 then
        self:RequestInteractionForceAlias(arg4)
    else
        self:CallDelay(arg5, self.NPCReInteractionProtected)
    end
end

function Quest20051:OnSubStart2005101(arg1)
    print("20051start")
    self:SetQuestVar(arg1.QuestConfigId, 4, 1)
    self:NotifyTo("Npc1403", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1431", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1537", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1413", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1461", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20051:OnSubFinish2005101(arg1) end
function Quest20051:OnSubFailed2005101(arg1) end

function Quest20051:OnSubStart2005102(arg1)
    print("renwuwanchen")
end

function Quest20051:OnSubFinish2005102(arg1) end
function Quest20051:OnSubFailed2005102(arg1) end

function Quest20051:OnSubStart2005160(arg1)
    if self:GetSubQuestState(2005103) == 3 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005108)
            actor:FinishQuestID(true, 2005104)
            self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
            actor:FinishQuestID(true, 2005105)
            self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
            actor:FinishQuestID(true, 2005106)
            self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
            self:SetQuestVar(arg1.QuestConfigId, 3, 1)
        end
    else
        if self:GetSubQuestState(2005104) == 3 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2005109)
                actor:FinishQuestID(true, 2005103)
                self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
                actor:FinishQuestID(true, 2005105)
                self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
                actor:FinishQuestID(true, 2005106)
                self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
                self:SetQuestVar(arg1.QuestConfigId, 3, 2)
            end
        else
            if self:GetSubQuestState(2005105) == 3 then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 2005110)
                    actor:FinishQuestID(true, 2005103)
                    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
                    actor:FinishQuestID(true, 2005104)
                    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
                    actor:FinishQuestID(true, 2005106)
                    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
                    self:SetQuestVar(arg1.QuestConfigId, 3, 3)
                end
            else
                if self:GetSubQuestState(2005106) == 3 then
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        actor:FinishQuestID(false, 2005111)
                        actor:FinishQuestID(true, 2005103)
                        self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
                        actor:FinishQuestID(true, 2005104)
                        self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
                        actor:FinishQuestID(true, 2005105)
                        self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
                        self:SetQuestVar(arg1.QuestConfigId, 3, 4)
                    end
                end
            end
        end
    end
end

function Quest20051:OnSubFinish2005160(arg1) end
function Quest20051:OnSubFailed2005160(arg1) end
function Quest20051:OnSubStart2005161(arg1) end
function Quest20051:OnSubFinish2005161(arg1) end
function Quest20051:OnSubFailed2005161(arg1) end
function Quest20051:OnSubStart2005103(arg1) end
function Quest20051:OnSubFinish2005103(arg1) end
function Quest20051:OnSubFailed2005103(arg1) end
function Quest20051:OnSubStart2005104(arg1) end
function Quest20051:OnSubFinish2005104(arg1) end
function Quest20051:OnSubFailed2005104(arg1) end
function Quest20051:OnSubStart2005105(arg1) end
function Quest20051:OnSubFinish2005105(arg1) end
function Quest20051:OnSubFailed2005105(arg1) end
function Quest20051:OnSubStart2005106(arg1) end
function Quest20051:OnSubFinish2005106(arg1) end
function Quest20051:OnSubFailed2005106(arg1) end

function Quest20051:OnSubStart2005166(arg1)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest20051:OnSubFinish2005166(arg1) end
function Quest20051:OnSubFailed2005166(arg1) end

function Quest20051:OnSubStart2005107(arg1)
    if 18 <= self:GetQuestVar(arg1.QuestConfigId, 4) then
        self:Rewind_NPC(arg1)
    end
end

function Quest20051:OnSubFinish2005107(arg1)
    if 18 <= self:GetQuestVar(arg1.QuestConfigId, 4) then
        self:Rewind_NPC(arg1)
    end

    self:SetQuestVar(arg1.QuestConfigId, 4, 18)
end

function Quest20051:OnSubFailed2005107(arg1)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20051:OnSubStart2005108(arg1) end
function Quest20051:OnSubFinish2005108(arg1) end
function Quest20051:OnSubFailed2005108(arg1) end
function Quest20051:OnSubStart2005109(arg1) end
function Quest20051:OnSubFinish2005109(arg1) end
function Quest20051:OnSubFailed2005109(arg1) end
function Quest20051:OnSubStart2005110(arg1) end
function Quest20051:OnSubFinish2005110(arg1) end
function Quest20051:OnSubFailed2005110(arg1) end
function Quest20051:OnSubStart2005111(arg1) end
function Quest20051:OnSubFinish2005111(arg1) end
function Quest20051:OnSubFailed2005111(arg1) end
function Quest20051:OnSubStart2005112(arg1) end
function Quest20051:OnSubFinish2005112(arg1) end
function Quest20051:OnSubFailed2005112(arg1) end
function Quest20051:OnSubStart2005113(arg1) end
function Quest20051:OnSubFinish2005113(arg1) end
function Quest20051:OnSubFailed2005113(arg1) end
function Quest20051:OnSubStart2005114(arg1) end
function Quest20051:OnSubFinish2005114(arg1) end
function Quest20051:OnSubFailed2005114(arg1) end
function Quest20051:OnSubStart2005115(arg1) end
function Quest20051:OnSubFinish2005115(arg1) end
function Quest20051:OnSubFailed2005115(arg1) end
function Quest20051:OnSubStart2005116(arg1) end
function Quest20051:OnSubFinish2005116(arg1) end
function Quest20051:OnSubFailed2005116(arg1) end
function Quest20051:OnSubStart2005117(arg1) end
function Quest20051:OnSubFinish2005117(arg1) end
function Quest20051:OnSubFailed2005117(arg1) end
function Quest20051:OnSubStart2005118(arg1) end
function Quest20051:OnSubFinish2005118(arg1) end
function Quest20051:OnSubFailed2005118(arg1) end
function Quest20051:OnSubStart2005119(arg1) end
function Quest20051:OnSubFinish2005119(arg1) end
function Quest20051:OnSubFailed2005119(arg1) end
function Quest20051:OnSubStart2005120(arg1) end
function Quest20051:OnSubFinish2005120(arg1) end
function Quest20051:OnSubFailed2005120(arg1) end
function Quest20051:OnSubStart2005121(arg1) end
function Quest20051:OnSubFinish2005121(arg1) end
function Quest20051:OnSubFailed2005121(arg1) end
function Quest20051:OnSubStart2005122(arg1) end
function Quest20051:OnSubFinish2005122(arg1) end
function Quest20051:OnSubFailed2005122(arg1) end
function Quest20051:OnSubStart2005123(arg1) end
function Quest20051:OnSubFinish2005123(arg1) end
function Quest20051:OnSubFailed2005123(arg1) end
function Quest20051:OnSubStart2005124(arg1) end

function Quest20051:OnSubFinish2005124(arg1)
    local tbl = {}
    print(self:GetSubQuestState(2005108))
    if self:GetSubQuestState(2005108) == 3 then
        tbl = nPC1Data
        self:NotifyTo("Npc1403", NpcUtil.NpcEventType.HIDESELF, true)
        self:NotifyTo("Npc1401", NpcUtil.NpcEventType.HIDESELF, true)
    else
        if self:GetSubQuestState(2005109) == 3 then
            tbl = nPC2Data
            self:NotifyTo("Npc1431", NpcUtil.NpcEventType.HIDESELF, true)
        else
            if self:GetSubQuestState(2005110) == 3 then
                tbl = nPC3Data
                self:NotifyTo("Npc1537", NpcUtil.NpcEventType.HIDESELF, true)
            else
                if self:GetSubQuestState(2005111) == 3 then
                    tbl = nPC4Data
                    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.HIDESELF, true)
                end
            end
        end
    end

    local questNpcCreateTask = self:CreateQuestNpcCreateTask({tbl.Npc})
    self:ShowBlackScreen(1, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, tbl.NpcID)
        local questNpcActor = arg1_2:GetQuestNpcActor(tbl.Npc)
        if questNpcActor ~= nil then
            questNpcActor:SitOnChair(8020)
            questNpcActor:EnableInteraction(true)
        end
    end, nil, questNpcCreateTask)
end

function Quest20051:OnSubFailed2005124(arg1) end

function Quest20051:OnSubStart2005125(arg1)
    self:Rewind_NPC(arg1)
    self:RequestInteractionForceAlias("Npc1465")
    self:SetQuestVar(arg1.QuestConfigId, 4, 18)
end

function Quest20051:OnSubFinish2005125(arg1) end
function Quest20051:OnSubFailed2005125(arg1) end

function Quest20051:OnSubStart2005137(arg1)
    new.Drink = 0
    n = 0
    if 37 <= self:GetQuestVar(arg1.QuestConfigId, 4) then
        self:RequestInteractionForceAlias("Npc1465")
        self:Rewind_NPC(arg1)
    else
        self:Rewind_NPC(arg1)
    end

    self:SetQuestVar(arg1.QuestConfigId, 4, 37)
    self:SetQuestVar(arg1.QuestConfigId, 1, 0)
end

function Quest20051:OnSubFinish2005137(arg1) end
function Quest20051:OnSubFailed2005137(arg1) end
function Quest20051:OnSubStart2005138(arg1) end

function Quest20051:OnSubFinish2005138(arg1)
    new:BaseLiquor(1)
end

function Quest20051:OnSubFailed2005138(arg1) end
function Quest20051:OnSubStart2005139(arg1) end

function Quest20051:OnSubFinish2005139(arg1)
    new:BaseLiquor(2)
end

function Quest20051:OnSubFailed2005139(arg1) end
function Quest20051:OnSubStart2005140(arg1) end

function Quest20051:OnSubFinish2005140(arg1)
    new:BaseLiquor(3)
end

function Quest20051:OnSubFailed2005140(arg1) end
function Quest20051:OnSubStart2005141(arg1) end

function Quest20051:OnSubFinish2005141(arg1)
    new:BaseLiquor(4)
end

function Quest20051:OnSubFailed2005141(arg1) end
function Quest20051:OnSubStart2005142(arg1) end

function Quest20051:OnSubFinish2005142(arg1)
    self:RequestInteractionForceAlias("Npc1465")
end

function Quest20051:OnSubFailed2005142(arg1) end

function Quest20051:OnSubStart2005163(arg1)
    if new.Drink == 0 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005163)
        end
    end
end

function Quest20051:OnSubFinish2005163(arg1) end
function Quest20051:OnSubFailed2005163(arg1) end
function Quest20051:OnSubStart2005164(arg1) end
function Quest20051:OnSubFinish2005164(arg1) end
function Quest20051:OnSubFailed2005164(arg1) end
function Quest20051:OnSubStart2005165(arg1) end
function Quest20051:OnSubFinish2005165(arg1) end
function Quest20051:OnSubFailed2005165(arg1) end

function Quest20051:OnSubStart2005143(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005143(arg1) end
function Quest20051:OnSubFailed2005143(arg1) end

function Quest20051:OnSubStart2005144(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005144(arg1) end
function Quest20051:OnSubFailed2005144(arg1) end
function Quest20051:OnSubStart2005145(arg1) end

function Quest20051:OnSubFinish2005145(arg1)
    if n == 0 then
        new:Step1(1)
    else
        if n == 1 then
            new:Step2(1)
        else
            if n == 2 then
                new:Step3(1)
            else
                if n == 3 then
                    new:Step4(1)
                end
            end
        end
    end

    n = n + 1
    self:SetQuestVar(arg1.QuestConfigId, 4, n + 37)
end

function Quest20051:OnSubFailed2005145(arg1) end
function Quest20051:OnSubStart2005146(arg1) end

function Quest20051:OnSubFinish2005146(arg1)
    if n == 0 then
        new:Step1(2)
    else
        if n == 1 then
            new:Step2(2)
        else
            if n == 2 then
                new:Step3(2)
            else
                if n == 3 then
                    new:Step4(2)
                end
            end
        end
    end

    n = n + 1
    self:SetQuestVar(arg1.QuestConfigId, 4, n + 37)
end

function Quest20051:OnSubFailed2005146(arg1) end
function Quest20051:OnSubStart2005147(arg1) end

function Quest20051:OnSubFinish2005147(arg1)
    if n == 0 then
        new:Step1(3)
    else
        if n == 1 then
            new:Step2(3)
        else
            if n == 2 then
                new:Step3(3)
            else
                if n == 3 then
                    new:Step4(3)
                end
            end
        end
    end

    n = n + 1
    self:SetQuestVar(arg1.QuestConfigId, 4, n + 37)
end

function Quest20051:OnSubFailed2005147(arg1) end
function Quest20051:OnSubStart2005148(arg1) end

function Quest20051:OnSubFinish2005148(arg1)
    if n == 0 then
        new:Step1(4)
    else
        if n == 1 then
            new:Step2(4)
        else
            if n == 2 then
                new:Step3(4)
            else
                if n == 3 then
                    new:Step4(4)
                end
            end
        end
    end

    n = n + 1
    self:SetQuestVar(arg1.QuestConfigId, 4, n + 37)
end

function Quest20051:OnSubFailed2005148(arg1) end

function Quest20051:OnSubStart2005149(arg1)
    self:Rewind_NPC(arg1)
    print(arg1.QuestConfigId)
    self:SetQuestVar(arg1.QuestConfigId, 2, 0)
    print("\229\146\139\230\178\161\230\137\167\232\161\140\229\145\162\239\188\159\239\188\159\239\188\159")
    print("Drink20051.Drink")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local givingRecord = 0
    if actor ~= nil then
        givingRecord = actor:GetGivingRecord(2005124)
    end

    print(givingRecord)
    local fmod = math.fmod(givingRecord, 100)
    print(fmod)
    new:AdditionalMaterial(fmod)
    print("\229\146\139\230\178\161\230\137\167\232\161\140\229\145\162\239\188\159\239\188\159\239\188\159")
    print("\229\146\139\230\178\161\230\137\167\232\161\140\229\145\162\239\188\159\239\188\159\239\188\159")
    print(new.Drink)
    local str = tostring(new.Drink)
    local n = drinkResult[str]
    if n == nil then
        local v = tostring(math.modf(new.Drink / 10000))
        local v2 = drinkResult_MM[v]
        self:SetQuestVar(arg1.QuestConfigId, 0, 2)
        print(arg1.QuestConfigId)
        print(self:GetQuestVar(arg1.QuestConfigId, 0))
    else
        self:SetQuestVar(arg1.QuestConfigId, 0, 1)
        print(arg1.QuestConfigId)
        print(self:GetQuestVar(arg1.QuestConfigId, 0))
    end

    print(n)
    if n == nil then
        n = 100330
    end

    self:SetQuestVar(arg1.QuestConfigId, 2, n)
end

function Quest20051:OnSubFinish2005149(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 2)
    if questVar ~= nil then
        self:SpawnItem(arg1, questVar, questVar - 100315, drinkData.Alias)
    else
        questVar = 100330
        self:SpawnItem(arg1, questVar, questVar - 100315, drinkData.Alias)
    end

    print(questVar)
end

function Quest20051:OnSubFailed2005149(arg1) end

function Quest20051:OnSubStart2005150(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005150(arg1) end
function Quest20051:OnSubFailed2005150(arg1) end

function Quest20051:OnSubStart2005151(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005151(arg1) end
function Quest20051:OnSubFailed2005151(arg1) end

function Quest20051:OnSubStart2005152(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005152(arg1) end
function Quest20051:OnSubFailed2005152(arg1) end

function Quest20051:OnSubStart2005153(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005153(arg1) end
function Quest20051:OnSubFailed2005153(arg1) end

function Quest20051:OnSubStart2005154(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005154(arg1) end
function Quest20051:OnSubFailed2005154(arg1) end

function Quest20051:OnSubStart2005155(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005155(arg1) end

function Quest20051:OnSubFailed2005155(arg1)
    self:GetQuestNpcActor(nPC1Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC2Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC3Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC4Data.Npc):Destroy(false)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20051:OnSubStart2005156(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005156(arg1) end
function Quest20051:OnSubFailed2005156(arg1) end

function Quest20051:OnSubStart2005157(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005157(arg1) end
function Quest20051:OnSubFailed2005157(arg1) end

function Quest20051:OnSubStart2005158(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005158(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:GetQuestNpcActor(nPC1Data.Npc):Destroy(false)
        arg1:GetQuestNpcActor(nPC2Data.Npc):Destroy(false)
        arg1:GetQuestNpcActor(nPC3Data.Npc):Destroy(false)
        arg1:GetQuestNpcActor(nPC4Data.Npc):Destroy(false)
    end)

    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20051:OnSubFailed2005158(arg1) end

function Quest20051:OnSubStart2005159(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005159(arg1) end
function Quest20051:OnSubFailed2005159(arg1) end

function Quest20051:OnSubStart2005162(arg1)
    self:Rewind_NPC(arg1)
end

function Quest20051:OnSubFinish2005162(arg1) end
function Quest20051:OnSubFailed2005162(arg1) end

function Quest20051:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        local n = self:GetQuestVar(2005150, 2) + self:GetQuestVar(2005150, 3) * 1000000
        print(n)
        local this = self
        local setQuestVar = self.SetQuestVar
        local v = 2005150
        local n2 = 1
        local str = tostring(n)
        setQuestVar(this, v, n2, drinkAward[str])
    end
end

function Quest20051:OnMainFinished(arg1) end
function Quest20051:OnMainFailed() end

function Quest20051:OnMainCanceled()
    self:GetQuestNpcActor(nPC1Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC2Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC3Data.Npc):Destroy(false)
    self:GetQuestNpcActor(nPC4Data.Npc):Destroy(false)
    self:NotifyTo("Npc1403", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1431", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1537", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1413", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1414", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1404", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1401", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1461", NpcUtil.NpcEventType.STARTDAILY, true)
    globalActor:UnSpawn(drinkData.Alias)
end

function Quest20051:Start() end
function Quest20051:OnDestroy() end
return Quest20051
