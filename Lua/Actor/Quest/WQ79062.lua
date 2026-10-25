require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79062 = class("Quest79062", QuestActorProxy)
Quest79062.defaultAlias = "Quest79062"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79062:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79062:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906201"] = self.OnSubStart7906201,
        ["7906202"] = self.OnSubStart7906202,
        ["7906203"] = self.OnSubStart7906203,
        ["7906204"] = self.OnSubStart7906204,
        ["7906205"] = self.OnSubStart7906205,
        ["7906267"] = self.OnSubStart7906267,
        ["7906268"] = self.OnSubStart7906268,
        ["7906206"] = self.OnSubStart7906206,
        ["7906231"] = self.OnSubStart7906231,
        ["7906207"] = self.OnSubStart7906207,
        ["7906208"] = self.OnSubStart7906208,
        ["7906209"] = self.OnSubStart7906209,
        ["7906210"] = self.OnSubStart7906210,
        ["7906211"] = self.OnSubStart7906211,
        ["7906255"] = self.OnSubStart7906255,
        ["7906256"] = self.OnSubStart7906256,
        ["7906212"] = self.OnSubStart7906212,
        ["7906213"] = self.OnSubStart7906213,
        ["7906214"] = self.OnSubStart7906214,
        ["7906257"] = self.OnSubStart7906257,
        ["7906258"] = self.OnSubStart7906258,
        ["7906215"] = self.OnSubStart7906215,
        ["7906216"] = self.OnSubStart7906216,
        ["7906247"] = self.OnSubStart7906247,
        ["7906217"] = self.OnSubStart7906217,
        ["7906218"] = self.OnSubStart7906218,
        ["7906219"] = self.OnSubStart7906219,
        ["7906259"] = self.OnSubStart7906259,
        ["7906260"] = self.OnSubStart7906260,
        ["7906263"] = self.OnSubStart7906263,
        ["7906272"] = self.OnSubStart7906272,
        ["7906220"] = self.OnSubStart7906220,
        ["7906261"] = self.OnSubStart7906261,
        ["7906221"] = self.OnSubStart7906221,
        ["7906222"] = self.OnSubStart7906222,
        ["7906223"] = self.OnSubStart7906223,
        ["7906224"] = self.OnSubStart7906224,
        ["7906225"] = self.OnSubStart7906225,
        ["7906270"] = self.OnSubStart7906270,
        ["7906227"] = self.OnSubStart7906227,
        ["7906248"] = self.OnSubStart7906248,
        ["7906237"] = self.OnSubStart7906237,
        ["7906238"] = self.OnSubStart7906238,
        ["7906239"] = self.OnSubStart7906239,
        ["7906240"] = self.OnSubStart7906240,
        ["7906264"] = self.OnSubStart7906264,
        ["7906265"] = self.OnSubStart7906265,
        ["7906243"] = self.OnSubStart7906243,
        ["7906244"] = self.OnSubStart7906244,
        ["7906245"] = self.OnSubStart7906245,
        ["7906246"] = self.OnSubStart7906246,
        ["7906228"] = self.OnSubStart7906228,
        ["7906266"] = self.OnSubStart7906266,
        ["7906249"] = self.OnSubStart7906249,
        ["7906269"] = self.OnSubStart7906269,
        ["7906254"] = self.OnSubStart7906254,
        ["7906253"] = self.OnSubStart7906253,
        ["7906252"] = self.OnSubStart7906252,
        ["7906251"] = self.OnSubStart7906251,
        ["7906250"] = self.OnSubStart7906250,
        ["7906229"] = self.OnSubStart7906229,
        ["7906273"] = self.OnSubStart7906273,
        ["7906230"] = self.OnSubStart7906230,
        ["7906271"] = self.OnSubStart7906271,
        ["7906226"] = self.OnSubStart7906226
    }
end

function Quest79062:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906201"] = self.OnSubFinish7906201,
        ["7906202"] = self.OnSubFinish7906202,
        ["7906203"] = self.OnSubFinish7906203,
        ["7906204"] = self.OnSubFinish7906204,
        ["7906205"] = self.OnSubFinish7906205,
        ["7906267"] = self.OnSubFinish7906267,
        ["7906268"] = self.OnSubFinish7906268,
        ["7906206"] = self.OnSubFinish7906206,
        ["7906231"] = self.OnSubFinish7906231,
        ["7906207"] = self.OnSubFinish7906207,
        ["7906208"] = self.OnSubFinish7906208,
        ["7906209"] = self.OnSubFinish7906209,
        ["7906210"] = self.OnSubFinish7906210,
        ["7906211"] = self.OnSubFinish7906211,
        ["7906255"] = self.OnSubFinish7906255,
        ["7906256"] = self.OnSubFinish7906256,
        ["7906212"] = self.OnSubFinish7906212,
        ["7906213"] = self.OnSubFinish7906213,
        ["7906214"] = self.OnSubFinish7906214,
        ["7906257"] = self.OnSubFinish7906257,
        ["7906258"] = self.OnSubFinish7906258,
        ["7906215"] = self.OnSubFinish7906215,
        ["7906216"] = self.OnSubFinish7906216,
        ["7906247"] = self.OnSubFinish7906247,
        ["7906217"] = self.OnSubFinish7906217,
        ["7906218"] = self.OnSubFinish7906218,
        ["7906219"] = self.OnSubFinish7906219,
        ["7906259"] = self.OnSubFinish7906259,
        ["7906260"] = self.OnSubFinish7906260,
        ["7906263"] = self.OnSubFinish7906263,
        ["7906272"] = self.OnSubFinish7906272,
        ["7906220"] = self.OnSubFinish7906220,
        ["7906261"] = self.OnSubFinish7906261,
        ["7906221"] = self.OnSubFinish7906221,
        ["7906222"] = self.OnSubFinish7906222,
        ["7906223"] = self.OnSubFinish7906223,
        ["7906224"] = self.OnSubFinish7906224,
        ["7906225"] = self.OnSubFinish7906225,
        ["7906270"] = self.OnSubFinish7906270,
        ["7906227"] = self.OnSubFinish7906227,
        ["7906248"] = self.OnSubFinish7906248,
        ["7906237"] = self.OnSubFinish7906237,
        ["7906238"] = self.OnSubFinish7906238,
        ["7906239"] = self.OnSubFinish7906239,
        ["7906240"] = self.OnSubFinish7906240,
        ["7906264"] = self.OnSubFinish7906264,
        ["7906265"] = self.OnSubFinish7906265,
        ["7906243"] = self.OnSubFinish7906243,
        ["7906244"] = self.OnSubFinish7906244,
        ["7906245"] = self.OnSubFinish7906245,
        ["7906246"] = self.OnSubFinish7906246,
        ["7906228"] = self.OnSubFinish7906228,
        ["7906266"] = self.OnSubFinish7906266,
        ["7906249"] = self.OnSubFinish7906249,
        ["7906269"] = self.OnSubFinish7906269,
        ["7906254"] = self.OnSubFinish7906254,
        ["7906253"] = self.OnSubFinish7906253,
        ["7906252"] = self.OnSubFinish7906252,
        ["7906251"] = self.OnSubFinish7906251,
        ["7906250"] = self.OnSubFinish7906250,
        ["7906229"] = self.OnSubFinish7906229,
        ["7906273"] = self.OnSubFinish7906273,
        ["7906230"] = self.OnSubFinish7906230,
        ["7906271"] = self.OnSubFinish7906271,
        ["7906226"] = self.OnSubFinish7906226
    }
end

function Quest79062:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7906202"] = self.OnSubFailed7906202,
        ["7906219"] = self.OnSubFailed7906219,
        ["7906259"] = self.OnSubFailed7906259,
        ["7906260"] = self.OnSubFailed7906260,
        ["7906221"] = self.OnSubFailed7906221,
        ["7906266"] = self.OnSubFailed7906266,
        ["7906249"] = self.OnSubFailed7906249,
        ["7906254"] = self.OnSubFailed7906254,
        ["7906253"] = self.OnSubFailed7906253,
        ["7906252"] = self.OnSubFailed7906252,
        ["7906251"] = self.OnSubFailed7906251,
        ["7906250"] = self.OnSubFailed7906250,
        ["7906229"] = self.OnSubFailed7906229
    }
end

function Quest79062:Start()
    print("Start")
end

function Quest79062:OnDestroy()
    print("OnDestroy")
end

function Quest79062:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79062:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79062:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79062:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79062:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79062:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7906270")
        actorUtils.FinishQuestID(false, 7906270)
    end
end

function Quest79062:CheckSitPoint()
    print("CheckSitPoint")
    local tbl = {}
    local v = {}
    local n = 7906267
    v[1] = "SitPoint_01"
    v[2] = n
    tbl[1] = v
    print("-----ReadytoSit-----")
    for i = 1, #tbl do
        print("SitPointName = " .. tbl[i][1])
        local pos = sceneData:GetDummyPoint(100, tbl[i][1]).pos
        local avatarPos = actorUtils.GetAvatarPos()
        print("[" .. i .. "]" .. " SitPos[x=" .. pos.x .. " , z=" .. pos.z .. "]   PlayerPos[x=" .. avatarPos.x .. " , z=" .. avatarPos.z .. "]")
        if math.abs(pos.x - avatarPos.x) < 3 then
            if math.abs(pos.z - avatarPos.z) < 3 then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    if 100 == sceneData.currSceneID then
                        print("[" .. i .. "]" .. "FinishQuest = " .. tbl[i][2])
                        actorUtils.FinishQuestID(false, 7906267)
                        Quest79062:RegisterStandingEvent()
                        return
                    end
                end
            end
        else
            print("[" .. i .. "]" .. "Not in any SitPoint")
        end
    end

    print("before standing")
    Quest79062:RegisterStandingEvent()
end

function Quest79062:RegisterSittingEvent()
    print("RegisterSittingEvent")
    Quest79062:CallOnAvatarSit(Quest79062.CheckSitPoint)
end

function Quest79062:RegisterStandingEvent()
    print("RegisterStandingEvent")
    Quest79062:CallOnAvatarStand(Quest79062.RegisterSittingEvent)
end

function Quest79062:OnSubStart7906201(arg1)
    print("OnSubStart7906201")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest79062:OnSubFinish7906201(arg1)
    print("OnSubFinish7906201")
end

function Quest79062:OnSubStart7906202(arg1)
    print("OnSubStart7906202")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
    this:CallDelayByQuest("790620201", 2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias, 79062)
        this:QuestNarratorTask(datas.Narrator790620202)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData790620201, 15, 4, -1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1141, true, nil, true, true, false, false)
            this:QuestNarratorTask(datas.Narrator790620203, function(arg1)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData790620202, 15, 4, -1, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
                    this:CallDelayByQuest("790620202", 2, function(arg1)
                        this:QuestNarratorTask(datas.Narrator790620204, function(arg1)
                            this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStateTrigger()
                            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData790620203, 15, 4, -1, function(arg1)
                                this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1343, true, nil, true, true, false, false)
                                this:QuestNarratorTask(datas.Narrator790620205)
                                this:CallDelayByQuest("790620203", 6, function(arg1)
                                    this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStateTrigger()
                                    this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData790620204, 15, 4, -1, function(arg1)
                                        actorMgr:CreateActorWithPos("Q7906202Trigger", "Actor/Gadget/Q7906202Trigger", 70900002, 0, {x = -22.961, y = 402.538, z = 130.641}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
                                    end, nil, nil, function(arg1)
                                        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias)
                                        questNpcActor:Standby()
                                        questNpcActor:TurnToAvatar()
                                        this:QuestNarratorTask(datas.Narrator790620206)
                                    end, nil, function(arg1)
                                        actorUtils.FinishQuestID(true, 7906202)
                                    end, false)
                                end)
                            end, nil, nil, function(arg1)
                                local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias)
                                questNpcActor:Standby()
                                questNpcActor:TurnToAvatar()
                                this:QuestNarratorTask(datas.Narrator790620206)
                            end, nil, function(arg1)
                                actorUtils.FinishQuestID(true, 7906202)
                            end, false)
                        end)
                    end)
                end, nil, nil, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias)
                    questNpcActor:Standby()
                    questNpcActor:TurnToAvatar()
                    this:QuestNarratorTask(datas.Narrator790620206)
                end, nil, function(arg1)
                    actorUtils.FinishQuestID(true, 7906202)
                end, false)
            end)
        end, nil, nil, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias)
            questNpcActor:Standby()
            questNpcActor:TurnToAvatar()
            this:QuestNarratorTask(datas.Narrator790620206)
        end, nil, function(arg1)
            actorUtils.FinishQuestID(true, 7906202)
        end, true)
    end)
end

function Quest79062:OnSubFinish7906202(arg1)
    print("OnSubFinish7906202")
end

function Quest79062:OnSubFailed7906202(arg1)
    print("OnSubFailed7906202")
    this:GetQuestNpcActor(npcs.Npc2661Data.alias):ClearFollowTask()
end

function Quest79062:OnSubStart7906203(arg1)
    print("OnSubStart7906203")
end

function Quest79062:OnSubFinish7906203(arg1)
    print("OnSubFinish7906203")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
end

function Quest79062:OnSubStart7906204(arg1)
    print("OnSubStart7906204")
end

function Quest79062:OnSubFinish7906204(arg1)
    print("OnSubFinish7906204")
end

function Quest79062:OnSubStart7906205(arg1)
    print("OnSubStart7906205")
end

function Quest79062:OnSubFinish7906205(arg1)
    print("OnSubFinish7906205")
end

function Quest79062:OnSubStart7906267(arg1)
    print("OnSubStart7906267")
    this:RegisterSittingEvent()
end

function Quest79062:OnSubFinish7906267(arg1)
    print("OnSubFinish7906267")
end

function Quest79062:OnSubStart7906268(arg1)
    print("OnSubStart7906268")
    this:CreateQuestNpcWithTrigger(npcs.PaimonData.alias, 7906268, npcs.PaimonData.id, 0, 10, 2)
end

function Quest79062:OnSubFinish7906268(arg1)
    print("OnSubFinish7906268")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79062:OnSubStart7906206(arg1)
    print("OnSubStart7906206")
end

function Quest79062:OnSubFinish7906206(arg1)
    print("OnSubFinish7906206")
end

function Quest79062:OnSubStart7906231(arg1)
    print("OnSubStart7906231")
    this:CreateQuestNpcWithTrigger("7906231talk", 7906231, npcs.Npc21438Data.id, 0, 8, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0, false, 0)
    this:CallDelayByQuest("79062311", 6, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21438Data.alias, 79062)
        local v = this:GetQuestNpcActor(npcs.Npc21439Data.alias, 79062)
        local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc21440Data.alias, 79062)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData79062311, 50, 10, -1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21438Data.alias):TurnToAvatar()
        end, nil, nil, nil, nil, nil, false)

        this:CallDelayByQuest("79062312", 2, function(arg1)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(v, datas.RoutePointsData79062312, 50, 10, -1, function(arg1)
                this:GetQuestNpcActor(npcs.Npc21439Data.alias):TurnToAvatar()
            end, nil, nil, nil, nil, nil, false)

            this:CallDelayByQuest("79062313", 1, function(arg1)
                this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor2, datas.RoutePointsData79062313, 50, 10, -1, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc21440Data.alias):TurnToAvatar()
                    actorMgr:CreateActorWithPos("Q7906231Trigger", "Actor/Gadget/Q7906231Trigger", 70900002, 0, {x = -6.787, y = 358.0, z = 144.005}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 100)
                end, nil, nil, nil, nil, nil, false)
            end)
        end)
    end)
end

function Quest79062:OnSubFinish7906231(arg1)
    print("OnSubFinish7906231")
end

function Quest79062:OnSubStart7906207(arg1)
    print("OnSubStart7906207")
end

function Quest79062:OnSubFinish7906207(arg1)
    print("OnSubFinish7906207")
end

function Quest79062:OnSubStart7906208(arg1)
    print("OnSubStart7906208")
    this:CreateQuestNpcWithTrigger("7906208", 7906208, npcs.Npc2661Data.id, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906208(arg1)
    print("OnSubFinish7906208")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906209(arg1)
    print("OnSubStart7906209")
end

function Quest79062:OnSubFinish7906209(arg1)
    print("OnSubFinish7906209")
end

function Quest79062:OnSubStart7906210(arg1)
    print("OnSubStart7906210")
    this:CreateQuestNpcWithTrigger("7906210", 7906210, npcs.Npc2661Data.id, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906210(arg1)
    print("OnSubFinish7906210")
end

function Quest79062:OnSubStart7906211(arg1)
    print("OnSubStart7906211")
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21438Data.id, 790629928, 8, true, 10, 12)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21439Data.id, 790629930, 8, true, 10, 12)
    this:CreateSpeechBubbleTask(npcs.Npc21440Data.id, 790629929, 8, true, 10, 12)
end

function Quest79062:OnSubFinish7906211(arg1)
    print("OnSubFinish7906211")
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubStart7906255(arg1)
    print("OnSubStart7906255")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest79062:OnSubFinish7906255(arg1)
    print("OnSubFinish7906255")
end

function Quest79062:OnSubStart7906256(arg1)
    print("OnSubStart7906256")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
    this:CallDelayByQuest("7906256", 2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias, 79062)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData79062561, 50, 8, -1, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias)
            questNpcActor:TurnTo(M.Euler2DirXZ({x = 0.0, y = 359.624, z = 0.0}))
            questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
            this:CallDelayByQuest("79062562", 5, function(arg1)
                this:CreateSpeechBubbleTask(npcs.Npc2661Data.id, 790629926, 8, true, 9, 10)
            end)
        end, nil, nil, nil, nil, nil, true)
    end)
end

function Quest79062:OnSubFinish7906256(arg1)
    print("OnSubFinish7906256")
end

function Quest79062:OnSubStart7906212(arg1)
    print("OnSubStart7906212")
    this:CreateQuestNpcWithTrigger("7906212", 7906212, npcs.Npc21438Data.id, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906212(arg1)
    print("OnSubFinish7906212")
    this:CallDelayByQuest("7906212", 2, function(arg1)
        this:QuestNarratorTask(datas.Narrator7906208)
    end)
end

function Quest79062:OnSubStart7906213(arg1)
    print("OnSubStart7906213")
    this:CreateQuestNpcWithTrigger("7906213", 7906213, npcs.Npc2661Data.id, 0, 8, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21537Data.id, 0, false, 0)
end

function Quest79062:OnSubFinish7906213(arg1)
    print("OnSubFinish7906213")
end

function Quest79062:OnSubStart7906214(arg1)
    print("OnSubStart7906214")
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21440Data.id, 790622701, 8, true, 10, 12)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21438Data.id, 790622901, 8, true, 10, 12)
    this:CreateSpeechBubbleTask(npcs.Npc21439Data.id, 790623101, 8, true, 10, 12)
end

function Quest79062:OnSubFinish7906214(arg1)
    print("OnSubFinish7906214")
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubStart7906257(arg1)
    print("OnSubStart7906257")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest79062:OnSubFinish7906257(arg1)
    print("OnSubFinish7906257")
end

function Quest79062:OnSubStart7906258(arg1)
    print("OnSubStart7906258")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
    this:CallDelayByQuest("7906258", 2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias, 79062)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData7906258, 50, 8, -1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
            this:CallDelayByQuest("79062582", 5, function(arg1)
                this:CreateSpeechBubbleTask(npcs.Npc2661Data.id, 790629927, 8, true, 9, 10)
            end)
        end, nil, nil, nil, nil, nil, true)
    end)
end

function Quest79062:OnSubFinish7906258(arg1)
    print("OnSubFinish7906258")
end

function Quest79062:OnSubStart7906215(arg1)
    print("OnSubStart7906215")
    this:CreateQuestNpcWithTrigger("7906215", 7906215, npcs.Npc2661Data.id, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906215(arg1)
    print("OnSubFinish7906215")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
    this:CallDelayByQuest("7906215", 2, function(arg1)
        this:QuestNarratorTask(datas.Narrator7906209)
    end)
end

function Quest79062:OnSubStart7906216(arg1)
    print("OnSubStart7906216")
end

function Quest79062:OnSubFinish7906216(arg1)
    print("OnSubFinish7906216")
end

function Quest79062:OnSubStart7906247(arg1)
    print("OnSubStart7906247")
    this:CreateQuestNpcWithTrigger("7906247", 7906247, npcs.Npc2661Data.id, 0, 100, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906247(arg1)
    print("OnSubFinish7906247")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906217(arg1)
    print("OnSubStart7906217")
end

function Quest79062:OnSubFinish7906217(arg1)
    print("OnSubFinish7906217")
end

function Quest79062:OnSubStart7906218(arg1)
    print("OnSubStart7906218")
    this:CreateQuestNpcWithTrigger("7906218", 7906218, npcs.Npc2661Data.id, 0, 20, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906218(arg1)
    print("OnSubFinish7906218")
end

function Quest79062:OnSubStart7906219(arg1)
    print("OnSubStart7906219")
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21439Data.id, 790623701, 8, true, 10, 12)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21438Data.id, 790624101, 8, true, 10, 12)
    this:CreateSpeechBubbleTask(npcs.Npc21440Data.id, 790624201, 8, true, 10, 12)
end

function Quest79062:OnSubFinish7906219(arg1)
    print("OnSubFinish7906219")
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubFailed7906219(arg1)
    print("OnSubFailed7906219")
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906259(arg1)
    print("OnSubStart7906259")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
end

function Quest79062:OnSubFinish7906259(arg1)
    print("OnSubFinish7906259")
end

function Quest79062:OnSubFailed7906259(arg1)
    print("OnSubFailed7906259")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
end

function Quest79062:OnSubStart7906260(arg1)
    print("OnSubStart7906260")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0, false, 0)
    this:CallDelayByQuest("7906260", 2, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2661Data.alias, 79062)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData7906260, 50, 8, -1, function(arg1)
            this:GetQuestNpcActor(npcs.Npc2661Data.alias):DoFreeStyle(1440, true, nil, true, true, false, false)
        end, nil, nil, nil, nil, nil, false)
    end)
end

function Quest79062:OnSubFinish7906260(arg1)
    print("OnSubFinish7906260")
end

function Quest79062:OnSubFailed7906260(arg1)
    print("OnSubFailed7906260")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
end

function Quest79062:OnSubStart7906263(arg1)
    print("OnSubStart7906263")
end

function Quest79062:OnSubFinish7906263(arg1)
    print("OnSubFinish7906263")
end

function Quest79062:OnSubStart7906272(arg1)
    print("OnSubStart7906272")
end

function Quest79062:OnSubFinish7906272(arg1)
    print("OnSubFinish7906272")
end

function Quest79062:OnSubStart7906220(arg1)
    print("OnSubStart7906220")
    this:CreateQuestNpcWithTrigger("7906220", 7906220, npcs.Npc2661Data.id, 0, 30, 2)
end

function Quest79062:OnSubFinish7906220(arg1)
    print("OnSubFinish7906220")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906261(arg1)
    print("OnSubStart7906261")
end

function Quest79062:OnSubFinish7906261(arg1)
    print("OnSubFinish7906261")
end

function Quest79062:OnSubStart7906221(arg1)
    print("OnSubStart7906221")
    this:DisableMainPageWithConfigByQuest(true, "DisableKWQQuest")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
end

function Quest79062:OnSubFinish7906221(arg1)
    print("OnSubFinish7906221")
    this:DisableMainPageWithConfigByQuest(false, "DisableKWQQuest")
end

function Quest79062:OnSubFailed7906221(arg1)
    print("OnSubFailed7906221")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 4)
    this:ClearNarratorTask()
end

function Quest79062:OnSubStart7906222(arg1)
    print("OnSubStart7906222")
    this:CreateQuestNpcWithTrigger("7906222", 7906222, npcs.Npc2661Data.id, 0, 20, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906222(arg1)
    print("OnSubFinish7906222")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906223(arg1)
    print("OnSubStart7906223")
end

function Quest79062:OnSubFinish7906223(arg1)
    print("OnSubFinish7906223")
    this:QuestNarratorTask(datas.Narrator7906224)
end

function Quest79062:OnSubStart7906224(arg1)
    print("OnSubStart7906224")
    this:CreateQuestNpc(arg1, npcs.Npc21441Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
end

function Quest79062:OnSubFinish7906224(arg1)
    print("OnSubFinish7906224")
end

function Quest79062:OnSubStart7906225(arg1)
    print("OnSubStart7906225")
    this:CreateQuestNpcWithTrigger("7906225", 7906225, npcs.Npc21441Data.id, 0, 15, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21540Data.id, 0, false, 0)
end

function Quest79062:OnSubFinish7906225(arg1)
    print("OnSubFinish7906225")
    this:NpcDestroyWithDither(npcs.Npc21540Data.alias, 100)
    this:NpcDestroy(npcs.Npc21441Data.alias, 100)
    this:NpcDestroy(npcs.Npc21439Data.alias, 100)
    this:NpcDestroy(npcs.Npc21440Data.alias, 100)
end

function Quest79062:OnSubStart7906270(arg1)
    print("OnSubStart7906270")
end

function Quest79062:OnSubFinish7906270(arg1)
    print("OnSubFinish7906270")
end

function Quest79062:OnSubStart7906227(arg1)
    print("OnSubStart7906227")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
end

function Quest79062:OnSubFinish7906227(arg1)
    print("OnSubFinish7906227")
end

function Quest79062:OnSubStart7906248(arg1)
    print("OnSubStart7906248")
    this:CreateQuestNpcWithTrigger("7906248", 7906248, npcs.Npc2661Data.id, 0, 20, 2)
end

function Quest79062:OnSubFinish7906248(arg1)
    print("OnSubFinish7906248")
end

function Quest79062:OnSubStart7906237(arg1)
    print("OnSubStart7906237")
    this:CreateQuestNpc(arg1, npcs.Npc21475Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21541Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21555Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21555Data.id, 790625201, 3, true, 4, 5)
end

function Quest79062:OnSubFinish7906237(arg1)
    print("OnSubFinish7906237")
    this:NpcDestroyWithDither(npcs.Npc21475Data.alias, 100)
    this:NpcDestroy(npcs.Npc21541Data.alias, 100)
    this:NpcDestroy(npcs.Npc21555Data.alias, 100)
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubStart7906238(arg1)
    print("OnSubStart7906238")
    this:CreateQuestNpc(arg1, npcs.Npc21476Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21542Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21542Data.id, 790625501, 3, true, 4, 5)
end

function Quest79062:OnSubFinish7906238(arg1)
    print("OnSubFinish7906238")
    this:NpcDestroyWithDither(npcs.Npc21476Data.alias, 100)
    this:NpcDestroy(npcs.Npc21542Data.alias, 100)
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubStart7906239(arg1)
    print("OnSubStart7906239")
end

function Quest79062:OnSubFinish7906239(arg1)
    print("OnSubFinish7906239")
end

function Quest79062:OnSubStart7906240(arg1)
    print("OnSubStart7906240")
    this:CreateQuestNpc(arg1, npcs.Npc21478Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21543Data.id, 0, false, 0)
    this:CreateSpeechBubbleTask(npcs.Npc21543Data.id, 790625801, 3, true, 4, 5)
end

function Quest79062:OnSubFinish7906240(arg1)
    print("OnSubFinish7906240")
    this:NpcDestroyWithDither(npcs.Npc21478Data.alias, 100)
    this:NpcDestroy(npcs.Npc21543Data.alias, 100)
    this:ClearSpeechBubbleTask()
end

function Quest79062:OnSubStart7906264(arg1)
    print("OnSubStart7906264")
end

function Quest79062:OnSubFinish7906264(arg1)
    print("OnSubFinish7906264")
end

function Quest79062:OnSubStart7906265(arg1)
    print("OnSubStart7906265")
end

function Quest79062:OnSubFinish7906265(arg1)
    print("OnSubFinish7906265")
end

function Quest79062:OnSubStart7906243(arg1)
    print("OnSubStart7906243")
end

function Quest79062:OnSubFinish7906243(arg1)
    print("OnSubFinish7906243")
end

function Quest79062:OnSubStart7906244(arg1)
    print("OnSubStart7906244")
    this:CreateQuestNpcWithTrigger("7906244", 7906244, npcs.Npc2661Data.id, 0, 5, 2)
end

function Quest79062:OnSubFinish7906244(arg1)
    print("OnSubFinish7906244")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
end

function Quest79062:OnSubStart7906245(arg1)
    print("OnSubStart7906245")
end

function Quest79062:OnSubFinish7906245(arg1)
    print("OnSubFinish7906245")
end

function Quest79062:OnSubStart7906246(arg1)
    print("OnSubStart7906246")
end

function Quest79062:OnSubFinish7906246(arg1)
    print("OnSubFinish7906246")
end

function Quest79062:OnSubStart7906228(arg1)
    print("OnSubStart7906228")
    this:CreateQuestNpcWithTrigger("7906228", 7906228, npcs.Npc2661Data.id, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21441Data.id, 0)
end

function Quest79062:OnSubFinish7906228(arg1)
    print("OnSubFinish7906228")
    this:NpcDestroyWithDither(npcs.Npc2661Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21441Data.alias, 100)
end

function Quest79062:OnSubStart7906266(arg1)
    print("OnSubStart7906266")
end

function Quest79062:OnSubFinish7906266(arg1)
    print("OnSubFinish7906266")
end

function Quest79062:OnSubFailed7906266(arg1)
    print("OnSubFailed7906266")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 5)
    end)
end

function Quest79062:OnSubStart7906249(arg1)
    print("OnSubStart7906249")
end

function Quest79062:OnSubFinish7906249(arg1)
    print("OnSubFinish7906249")
end

function Quest79062:OnSubFailed7906249(arg1)
    print("OnSubFailed7906249")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 6)
    end)
end

function Quest79062:OnSubStart7906269(arg1)
    print("OnSubStart7906269")
end

function Quest79062:OnSubFinish7906269(arg1)
    print("OnSubFinish7906269")
end

function Quest79062:OnSubStart7906254(arg1)
    print("OnSubStart7906254")
end

function Quest79062:OnSubFinish7906254(arg1)
    print("OnSubFinish7906254")
end

function Quest79062:OnSubFailed7906254(arg1)
    print("OnSubFailed7906254")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 7)
    end)
end

function Quest79062:OnSubStart7906253(arg1)
    print("OnSubStart7906253")
end

function Quest79062:OnSubFinish7906253(arg1)
    print("OnSubFinish7906253")
end

function Quest79062:OnSubFailed7906253(arg1)
    print("OnSubFailed7906253")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 8)
    end)
end

function Quest79062:OnSubStart7906252(arg1)
    print("OnSubStart7906252")
end

function Quest79062:OnSubFinish7906252(arg1)
    print("OnSubFinish7906252")
end

function Quest79062:OnSubFailed7906252(arg1)
    print("OnSubFailed7906252")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 9)
    end)
end

function Quest79062:OnSubStart7906251(arg1)
    print("OnSubStart7906251")
end

function Quest79062:OnSubFinish7906251(arg1)
    print("OnSubFinish7906251")
end

function Quest79062:OnSubFailed7906251(arg1)
    print("OnSubFailed7906251")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 10)
    end)
end

function Quest79062:OnSubStart7906250(arg1)
    print("OnSubStart7906250")
end

function Quest79062:OnSubFinish7906250(arg1)
    print("OnSubFinish7906250")
end

function Quest79062:OnSubFailed7906250(arg1)
    print("OnSubFailed7906250")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 11)
    end)
end

function Quest79062:OnSubStart7906229(arg1)
    print("OnSubStart7906229")
end

function Quest79062:OnSubFinish7906229(arg1)
    print("OnSubFinish7906229")
end

function Quest79062:OnSubFailed7906229(arg1)
    print("OnSubFailed7906229")
    this:LevelReadySafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 12)
    end)
end

function Quest79062:OnSubStart7906273(arg1)
    print("OnSubStart7906273")
end

function Quest79062:OnSubFinish7906273(arg1)
    print("OnSubFinish7906273")
end

function Quest79062:OnSubStart7906230(arg1)
    print("OnSubStart7906230")
    this:CreateQuestNpcWithTrigger("7906230", 7906230, npcs.Npc21441Data.id, 0, 30, 2)
    this:CreateQuestNpcWithTrigger("79062301", 7906230, npcs.Npc21439Data.id, 0, 20, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21438Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21538Data.id, 0, false, 0)
end

function Quest79062:OnSubFinish7906230(arg1)
    print("OnSubFinish7906230")
    this:NpcDestroyWithDither(npcs.Npc21441Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21438Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21439Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21440Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21538Data.alias, 100)
end

function Quest79062:OnSubStart7906271(arg1)
    print("OnSubStart7906271")
end

function Quest79062:OnSubFinish7906271(arg1)
    print("OnSubFinish7906271")
end

function Quest79062:OnSubStart7906226(arg1)
    print("OnSubStart7906226")
    this:CreateQuestNpc(arg1, npcs.Npc2661Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21439Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21440Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21441Data.id, 0)
end

function Quest79062:OnSubFinish7906226(arg1)
    print("OnSubFinish7906226")
    this:NpcDestroy(npcs.Npc21441Data.alias, 100)
    this:NpcDestroy(npcs.Npc21439Data.alias, 100)
    this:NpcDestroy(npcs.Npc21440Data.alias, 100)
    this:QuestNarratorTask(datas.Narrator7906226)
end

return Quest79062
