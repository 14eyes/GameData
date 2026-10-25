require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2022 = class("Quest2022", QuestActorProxy)
Quest2022.defaultAlias = "Quest2022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["202201"] = self.OnSubStart202201,
        ["202202"] = self.OnSubStart202202,
        ["202203"] = self.OnSubStart202203
    }
end

function Quest2022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["202201"] = self.OnSubFinish202201,
        ["202202"] = self.OnSubFinish202202,
        ["202203"] = self.OnSubFinish202203
    }
end

function Quest2022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["202201"] = self.OnSubFailed202201,
        ["202202"] = self.OnSubFailed202202,
        ["202203"] = self.OnSubFailed202203
    }
end

function Quest2022:Start()
    print("Start")
end

function Quest2022:OnDestroy()
    print("OnDestroy")
end

function Quest2022:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc12091Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12092Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12094Data.alias, 3)
end

function Quest2022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2022:OnSubStart202201(arg1)
    print("OnSubStart202201")
    self:CreateQuestNpc(arg1, npcs.Npc12091Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12094Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20457Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20459Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc20472Data.id, 12)
    self:CreateQuestNpc(arg1, npcs.Npc20473Data.id, 13)
    if self:GetSubQuestState(201905) ~= 2 then
        if self:GetSubQuestState(201901) ~= 2 then
            if self:GetSubQuestState(201902) ~= 2 then
                if self:GetSubQuestState(201903) ~= 2 then
                    if self:GetSubQuestState(201904) ~= 2 then
                        if self:GetSubQuestState(202001) ~= 2 then
                            if self:GetSubQuestState(202007) ~= 2 then
                                if self:GetSubQuestState(202008) ~= 2 then
                                    if self:GetSubQuestState(202009) ~= 2 then
                                        if self:GetSubQuestState(202002) == 2 then
                                        else
                                            self:CreateQuestNpc(arg1, npcs.Npc20460Data.id, 8)
                                            self:CreateQuestNpc(arg1, npcs.Npc20469Data.id, 9)
                                            self:CreateQuestNpc(arg1, npcs.Npc20471Data.id, 11)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if self:GetSubQuestState(201803) ~= 2 then
        if self:GetSubQuestState(201805) ~= 2 then
            if self:GetSubQuestState(201806) ~= 2 then
                if self:GetSubQuestState(201807) ~= 2 then
                    if self:GetSubQuestState(201804) ~= 2 then
                        if self:GetSubQuestState(201905) ~= 2 then
                            if self:GetSubQuestState(201901) ~= 2 then
                                if self:GetSubQuestState(201902) ~= 2 then
                                    if self:GetSubQuestState(201903) ~= 2 then
                                        if self:GetSubQuestState(201904) ~= 2 then
                                            if self:GetSubQuestState(202001) ~= 2 then
                                                if self:GetSubQuestState(202007) ~= 2 then
                                                    if self:GetSubQuestState(202008) ~= 2 then
                                                        if self:GetSubQuestState(202009) ~= 2 then
                                                            if self:GetSubQuestState(202002) == 2 then
                                                            else
                                                                self:CreateQuestNpc(arg1, npcs.Npc20458Data.id, 6)
                                                                self:CreateQuestNpc(arg1, npcs.Npc20470Data.id, 10)
                                                                self:CreateQuestNpc(arg1, npcs.Npc20474Data.id, 14)
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if self:GetSubQuestState(201803) ~= 2 then
        if self:GetSubQuestState(201805) ~= 2 then
            if self:GetSubQuestState(201806) ~= 2 then
                if self:GetSubQuestState(201807) ~= 2 then
                    if self:GetSubQuestState(201804) ~= 2 then
                        if self:GetSubQuestState(201905) ~= 2 then
                            if self:GetSubQuestState(201901) ~= 2 then
                                if self:GetSubQuestState(201902) ~= 2 then
                                    if self:GetSubQuestState(201903) ~= 2 then
                                        if self:GetSubQuestState(201904) ~= 2 then
                                            if self:GetSubQuestState(202001) ~= 2 then
                                                if self:GetSubQuestState(202007) ~= 2 then
                                                    if self:GetSubQuestState(202008) ~= 2 then
                                                        if self:GetSubQuestState(202009) ~= 2 then
                                                            if self:GetSubQuestState(202002) == 2 then
                                                            else
                                                                self:CreateQuestNpc(arg1, npcs.Npc12093Data.id, 3)
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if self:GetSubQuestState(202013) == 2 then
    else
        self:CreateQuestNpc(arg1, npcs.Npc12092Data.id, 2)
    end
end

function Quest2022:OnSubFinish202201(arg1)
    print("OnSubFinish202201")
    self:SafeDestroyQuestNpc(npcs.Npc12091Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12092Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12094Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20457Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20458Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20459Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20460Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20469Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20470Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20471Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20472Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20473Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20474Data.alias, 3)
end

function Quest2022:OnSubFailed202201(arg1)
    print("OnSubFailed202201")
end

function Quest2022:OnSubStart202202(arg1)
    if self:GetSubQuestState(201711) ~= 2 then
        if self:GetSubQuestState(201711) == 4 then
        else
            self:TransmitPlayerByQuestId(202202, 1, function(arg1)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 202202)
                end
            end)
        end
    end
end

function Quest2022:OnSubFinish202202(arg1)
    print("OnSubFinish202202")
end

function Quest2022:OnSubFailed202202(arg1)
    print("OnSubFailed202202")
end

function Quest2022:OnSubStart202203(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 202203)
    end
end

function Quest2022:OnSubFinish202203(arg1)
    print("OnSubFinish202203")
end

function Quest2022:OnSubFailed202203(arg1)
    print("OnSubFailed202203")
end

return Quest2022
