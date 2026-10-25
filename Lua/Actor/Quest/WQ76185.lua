require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76185 = class("Quest76185", QuestActorProxy)
Quest76185.defaultAlias = "Quest76185"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76185:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76185:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618501"] = self.OnSubStart7618501,
        ["7618502"] = self.OnSubStart7618502,
        ["7618503"] = self.OnSubStart7618503,
        ["7618504"] = self.OnSubStart7618504
    }
end

function Quest76185:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618501"] = self.OnSubFinish7618501,
        ["7618502"] = self.OnSubFinish7618502,
        ["7618503"] = self.OnSubFinish7618503,
        ["7618504"] = self.OnSubFinish7618504
    }
end

function Quest76185:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618502"] = self.OnSubFailed7618502, ["7618503"] = self.OnSubFailed7618503}
end

function Quest76185:Start()
    print("Start")
end

function Quest76185:OnDestroy()
    print("OnDestroy")
end

function Quest76185:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76185:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76185:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618503N1316Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:RemoveLocalGadget(70711275, "2")
    this:RemoveLocalGadget(70711275, "10")
    this:RemoveLocalGadget(73177041, "1")
    this:RemoveLocalGadget(73177012, "0")
    this:RemoveLocalGadget(73177013, "3")
    this:RemoveLocalGadget(73177013, "1")
    this:RecycleAllRes()
end

function Quest76185:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76185:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618501 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618502 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76185:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest76185:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76185:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76185:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = -7.5, y = 0.3, z = -54.1}, 30, 73177007, 10000133, 7618502) then
        actorUtils.FinishQuestWithParam({false}, {7618502})
    else
        if this:GetSubQuestState(7618502) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76185:OnSubStart7618501(arg1)
    print("OnSubStart7618501")
end

function Quest76185:OnSubFinish7618501(arg1)
    print("OnSubFinish7618501")
end

function Quest76185:OnSubStart7618502(arg1)
    print("OnSubStart7618502")
    this:RepeatSitCheck()
end

function Quest76185:OnSubFinish7618502(arg1)
    print("OnSubFinish7618502")
end

function Quest76185:OnSubFailed7618502(arg1)
    print("OnSubFailed7618502")
    this:RecycleAllRes()
end

function Quest76185:OnSubStart7618503(arg1)
    print("OnSubStart7618503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618503, 0, 40, 0.5, npcs.Npc1316.id)
end

function Quest76185:OnSubFinish7618503(arg1)
    print("OnSubFinish7618503")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
end

function Quest76185:OnSubFailed7618503(arg1)
    print("OnSubFailed7618503")
    this:RecycleAllRes()
end

function Quest76185:OnSubStart7618504(arg1)
    print("OnSubStart7618504")
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 76185):SitOnChair(8080, false)
    this:CreateLocalGadget(70711275, "2", {x = -6.633, y = 1.035, z = -49.657}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711275, "10", {x = -6.796, y = 1.035, z = -48.826}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "1", {x = -7.723, y = 1.044, z = -49.265}, {x = 0, y = 85.981, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "0", {x = -7.35, y = 1.039, z = -49.495}, {x = 0, y = 333.853, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "3", {x = -6.861, y = 1.039, z = -49.689}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "1", {x = -6.559, y = 1.034, z = -48.82}, {x = 0, y = 185.524, z = 0}, 1205, nil, nil, false, 0, true)
end

function Quest76185:OnSubFinish7618504(arg1)
    print("OnSubFinish7618504")
    this:AfterInterCall(function(arg1)
        this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
        this:RecycleAllRes()
    end)
end

return Quest76185
